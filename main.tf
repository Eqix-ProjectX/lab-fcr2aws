provider "equinix" {
  # client_id     = var.equinix_client_id
  # client_secret = var.equinix_client_secret
}
provider "aws" {
  # access_key = var.additional_info[0]["value"]
  # secret_key = var.additional_info[1]["value"]
  region = var.zside_seller_region
}

module "fcr" {
  source                 = "./modules/fcrs/"
  fcr_name               = "sna-lab-fcr1"
  notifications_emails   = var.notifications_emails
  connection_uuid        = module.cloud_router_aws_connection.primary_connection_id
  customer_peer_ip       = substr(var.aws_vif_amazon_address, 0, 11)
  customer_asn           = var.aws_gateway_asn
  bgp_auth_key           = var.aws_vif_bgp_auth_key
  direct_equinix_ipv4_ip = var.aws_vif_customer_address
}

module "cloud_router_aws_connection" {
  source = "equinix/fabric/equinix//modules/cloud-router-connection"

  connection_name      = var.connection_name
  connection_type      = var.connection_type
  notifications_type   = var.notifications_type
  notifications_emails = var.notifications_emails
  # additional_info       = var.additional_info
  bandwidth             = var.bandwidth
  purchase_order_number = var.purchase_order_number

  #Aside
  aside_fcr_uuid = module.fcr.uuid

  #Zside
  zside_ap_type               = var.zside_ap_type
  zside_ap_authentication_key = var.zside_ap_authentication_key
  zside_ap_profile_type       = var.zside_ap_profile_type
  zside_location              = var.zside_location
  zside_seller_region         = var.zside_seller_region
  zside_fabric_sp_name        = var.zside_fabric_sp_name
}

data "aws_dx_connection" "aws_connection" {
  name = var.connection_name
  depends_on = [
    module.cloud_router_aws_connection
  ]
}

resource "aws_dx_connection_confirmation" "confirmation" {
  connection_id = data.aws_dx_connection.aws_connection.id
}

resource "aws_dx_gateway" "aws_gateway" {
  depends_on = [
    module.cloud_router_aws_connection
  ]
  name            = var.aws_gateway_name
  amazon_side_asn = var.aws_gateway_asn
}

resource "aws_dx_private_virtual_interface" "aws_virtual_interface" {
  depends_on = [
    module.cloud_router_aws_connection,
    aws_dx_gateway.aws_gateway,
    module.fcr
  ]
  lifecycle {
    precondition {
      condition     = can(regex("^dxcon-*", data.aws_dx_connection.aws_connection.id))
      error_message = "connection must be ready before running"
    }
  }
  connection_id    = data.aws_dx_connection.aws_connection.id
  name             = var.aws_vif_name
  vlan             = data.aws_dx_connection.aws_connection.vlan_id
  address_family   = var.aws_vif_address_family
  bgp_asn          = var.aws_vif_bgp_asn
  amazon_address   = var.aws_vif_amazon_address
  customer_address = var.aws_vif_customer_address
  bgp_auth_key     = var.aws_vif_bgp_auth_key
  dx_gateway_id    = aws_dx_gateway.aws_gateway.id
}