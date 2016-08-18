output "eip_ids" {
  value = ["${aws_eip.eips.*.id}"]
}

output "eip_public_ips" {
  value = ["${aws_eip.eips.*.public_ip}"]
}

output "nat_gateway_ids" {
  value = ["${aws_nat_gateway.nat_gateways.*.id}"]
}

output "subnet_ids" {
  value = ["${module.subnets.subnet_ids}"]
}
