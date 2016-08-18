resource "aws_eip" "eips" {
  count = "${length(var.subnets_cidrs)}"
  vpc   = "true"
}

resource "aws_nat_gateway" "nat_gateways" {
  count         = "${length(var.subnets_cidrs)}"
  allocation_id = "${element(aws_eip.eips.*.id, count.index)}"
  subnet_id     = "${element(module.subnets.subnet_ids, count.index)}"
}

resource "aws_route" "private_nats-to-nat_gateways" {
  count                  = "${length(var.subnets_cidrs)}"
  route_table_id         = "${element(var.nat_route_tables, count.index)}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${element(aws_nat_gateway.nat_gateways.*.id, count.index)}"
}
