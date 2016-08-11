resource "aws_eip" "eips" {
  count = "${length(var.subnets_cidr)}"
  vpc   = "true"
}

resource "aws_nat_gateway" "nat_gateways" {
  count         = "${length(var.subnets_cidr)}"
  allocation_id = "${element(aws_eip.eips.*.id, count.index)}"
  subnet_id     = "${module.subnets.subnet_ids[count.index]}"
}

resource "aws_route" "private_nats-to-nat_gateways" {
  count                  = "${length(var.subnets_cidr)}"
  route_table_id         = "${var.gateway_route_tables[count.index]}"
  destination_cidr_block = "0.0.0.0/0"
}
