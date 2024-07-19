output "equinix_peer_ip" {
  value = [for bgp in equinix_fabric_routing_protocol.bgp.bgp_ipv4 : bgp.equinix_peer_ip]
}
output "uuid" {
  value = equinix_fabric_cloud_router.new_cloud_router.uuid
}