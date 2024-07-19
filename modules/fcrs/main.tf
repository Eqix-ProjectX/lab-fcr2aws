
terraform {
  required_providers {
    equinix = {
      source = "equinix/equinix"
    }
  }
}
resource "equinix_fabric_cloud_router" "new_cloud_router"{
  name = var.fcr_name
  type = "XF_ROUTER"
  notifications{
    type = "ALL"
    emails = var.notifications_emails
  }
  order {
    purchase_order_number = "1-111111"
  }
  location {
    metro_code = "TY"
  }
  package {
    code = "STANDARD"
  }
  project {
      project_id = var.project_id
  }
  account {
      account_number = var.account_number
  }
}

resource "equinix_fabric_routing_protocol" "direct"{
  connection_uuid = var.connection_uuid
  type = "DIRECT"
  name = "direct_rp"
  direct_ipv4 {
      equinix_iface_ip = var.direct_equinix_ipv4_ip
  }
}
resource "equinix_fabric_routing_protocol" "bgp" {
  connection_uuid = var.connection_uuid
  type            = "BGP"
  name            = "bgp_lab"
  bgp_ipv4 {
    customer_peer_ip = var.customer_peer_ip
    enabled          = true 
  }
  customer_asn = var.customer_asn
  bgp_auth_key = var.bgp_auth_key
  depends_on = [ 
   equinix_fabric_routing_protocol.direct
  ]
}