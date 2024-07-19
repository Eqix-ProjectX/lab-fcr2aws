
# variable "fcr_name" {}
# variable "fcr_type" {}
# variable "po" {}
# variable "package" {}
# variable "project" {}
# variable "account" {}
variable "connection_name" {
  description = "Connection name. An alpha-numeric 24 characters string which can include only hyphens and underscores"
  type        = string
}
variable "connection_type" {
  description = "Defines the connection type like VG_VC, EVPL_VC, EPL_VC, EC_VC, IP_VC, ACCESS_EPL_VC"
  default     = ""
  type        = string
}
variable "notifications_type" {
  description = "Notification Type - ALL is the only type currently supported"
  type        = string
  default     = "ALL"
}
variable "notifications_emails" {
  description = "Array of contact emails"
  type        = list(string)
}
variable "bandwidth" {
  description = "Connection bandwidth in Mbps"
  type        = number
}
variable "purchase_order_number" {
  description = "Purchase order number"
  type        = string
  default     = ""
}
# variable "aside_fcr_uuid" {
#   description = "Equinix-assigned Fabric Cloud Router identifier"
#   type        = string
# }
variable "zside_ap_type" {
  description = "Access point type - COLO, VD, VG, SP, IGW, SUBNET, GW"
  type        = string
  default     = "SP"
}
variable "zside_ap_authentication_key" {
  description = "Authentication key for provider based connections"
  type        = string
  sensitive   = true
}
variable "zside_ap_profile_type" {
  description = "Service profile type - L2_PROFILE, L3_PROFILE, ECIA_PROFILE, ECMC_PROFILE"
  type        = string
  default     = "L2_PROFILE"
}
variable "zside_location" {
  description = "Access point metro code"
  type        = string
  default     = "SP"
}
variable "zside_seller_region" {
  description = "Access point seller region"
  type        = string
  default     = ""
}
variable "zside_fabric_sp_name" {
  description = "Equinix Service Profile Name"
  type        = string
  default     = ""
}
variable "aws_vif_name" {
  description = "The name for the virtual interface"
  type        = string
}
variable "aws_vif_address_family" {
  description = "The address family for the BGP peer. ipv4 or ipv6"
  type        = string
}
variable "aws_vif_bgp_asn" {
  description = "The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration"
  type        = number
}
variable "aws_vif_amazon_address" {
  description = "The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers"
  type        = string
  default     = ""
}
variable "aws_vif_customer_address" {
  description = "The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers"
  type        = string
  default     = ""
}
variable "aws_vif_bgp_auth_key" {
  description = "The authentication key for BGP configuration"
  type        = string
  default     = ""
  sensitive   = true
}
variable "aws_gateway_name" {
  description = "The name of the Gateway"
  type        = string
}
variable "aws_gateway_asn" {
  description = "The ASN to be configured on the Amazon side of the connection. The ASN must be in the private range of 64,512 to 65,534 or 4,200,000,000 to 4,294,967,294"
  type        = number
}
variable "project_id" {}
variable "fcr_name" {}
variable "account_number" {}
# variable "connection_uuid" {
#   description = "Equinix Connection UUID to Apply the Routing Protocols to"
#   type        = string
# }

#Google Provider
# variable "google_region" {
#   description = "The Google region to manage resources in"
#   type        = string
# }
# variable "google_project_id" {
#   description = "The default Google Project Id to manage resources in"
#   type        = string
# }
# variable "google_zone" {
#   description = "The default Google Zone to manage resources in"
#   type        = string
# }
# variable "google_network_name" {
#   description = "The Google Network Name"
#   type        = string
# }
# variable "google_network_mtu" {
#   description = "The Google Network Maximum Transmission Unit in bytes"
#   type        = string
# }
# variable "google_network_auto_create_subnetwork" {
#   description = "When set to true, the network is created in auto subnet mode"
#   type        = bool
# }
# variable "google_router_name" {
#   description = "The Google Router Name"
#   type        = string
# }
# variable "google_router_bgp_asn" {
#   description = "The Google Router Local BGP Autonomous System Number (ASN)"
#   type        = string
# }
# variable "google_interconnect_name" {
#   description = "The Google Interconnect Name"
#   type        = string
# }
# variable "google_interconnect_type" {
#   description = "The Google Interconnect Type"
#   type        = string
# }
# variable "google_interconnect_edge_availability_domain" {
#   description = "The Google Interconnect Edge Availability Domain"
#   type        = string
# }
# #Fabric Connection
# variable "gcpconnection_name" {
#   description = "Connection name. An alpha-numeric 24 characters string which can include only hyphens and underscores"
#   type        = string
# }
# variable "zside_fabric_gcpsp_name" {
#   description = "Equinix Service Profile Name"
#   type        = string
#   default     = ""
# }

# variable "bgp_auth_key" {
#   type        = string  
# }
# variable "account_number" {
#   description = ""
#   type        = string
# }

# variable "code" {
#   description = ""
#   type        = string
# }

# variable "emails" {
#   description = ""
#   type        = list(string)
# }

# variable "metro_code" {
#   description = ""
#   type        = string
# }

# variable "name" {
#   description = ""
#   type        = string
# }

# variable "notiftype" {
#   description = ""
#   type        = string
# }

# variable "po" {
#   description = "dummy"
#   default     = "1-111111"
#   type        = string
# }

# variable "project_id" {
#   description = ""
#   type        = string
# }

# variable "type" {
#   description = ""
# }

# variable "connection_uuid" {
#   description = "Equinix Connection UUID to Apply the Routing Protocols to"
#   type        = string
# }
# variable "direct_rp_name" {
#   description = "Name of the Direct Routing Protocol"
#   type        = string
# }
# variable "direct_equinix_ipv4_ip" {
#   description = "IPv4 Address for Direct Routing Protocol"
#   type        = string
# }
# variable "direct_equinix_ipv6_ip" {
#   description = "IPv6 Address for Direct Routing Protocol"
#   type        = string
# }


# variable "bgp_rp_name" {
#   description = "Name of the BGP Routing Protocol"
#   type        = string
#   default     = ""
# }
# variable "bgp_customer_peer_ipv4" {
#   description = "Customer Peering IPv4 Address for BGP Routing Protocol"
#   type        = string
#   default     = ""
# }
# variable "bgp_customer_peer_ipv6" {
#   description = "Customer Peering IPv6 Address for BGP Routing Protocol"
#   type        = string
#   default     = ""
# }
# variable "bgp_enabled_ipv4" {
#   description = "Boolean Enable Flag for IPv4 Peering on BGP Routing Protocol"
#   type        = bool
#   default     = true
# }
# variable "bgp_enabled_ipv6" {
#   description = "Boolean Enable Flag for IPv6 Peering on BGP Routing Protocol"
#   type        = bool
#   default     = true
# }
# variable "bgp_customer_asn" {
#   description = "Customer ASN for BGP Routing Protocol"
#   type        = string
#   default     = ""
# }