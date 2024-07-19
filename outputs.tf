output "aws_connection_id" {
  value = module.cloud_router_aws_connection.primary_connection_id
}
output "aws_connection_id_sec" {
  value = module.cloud_router_aws_connection.secondary_connection_id
}
# output "aws_dx_gateway_id" {
#   value = aws_dx_gateway.aws_gateway.id
# }
# output "aws_interface_id" {
#   value = aws_dx_private_virtual_interface.aws_virtual_interface.id
# }

# output "uuid" {
#   value = module.FCR.uuid
# }


# output "direct_rp_id" {
#   value = module.routing_protocols.direct_routing_protocol_id
# }

# output "bgp_rp_id" {
#   value = module.routing_protocols.bgp_routing_protocol_id
# }
