resource "aws_eip" "eips" {
  count = "${length(var.subnets_cidr)}"
  vpc   = "true"
}

resource "aws_nat_gateway" "nat_gateways" {
  count         = "${length(var.subnets_cidr)}"
  allocation_id = "${element(aws_eip.eips.*.id, count.index)}"
  subnet_id     = "${module.subnets.subnet_ids[count.index]}"
}
