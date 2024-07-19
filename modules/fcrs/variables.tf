
variable "notifications_emails" {
  description = "Array of contact emails"
  type        = list(string)
}
variable "customer_asn" {
  description = "The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration"
  type        = number
}
variable "customer_peer_ip" {
  description = "The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers"
  type        = string
  default     = ""
}
variable "bgp_auth_key" {
  description = "The authentication key for BGP configuration"
  type        = string
  default     = ""
  sensitive   = true
}
variable "connection_uuid" {}
variable "fcr_name" {}
variable "direct_equinix_ipv4_ip" {}
variable "project_id" {}
variable "account_number" {}