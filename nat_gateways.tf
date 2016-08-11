resource "aws_eip" "eips" {
  count = "${length(module.subnets.subnet_ids)}"
  vpc   = "true"
}

resource "aws_nat_gateway" "nat_gateways" {
  count         = "${length(module.subnets.subnet_ids)}"
  allocation_id = "${element(aws_eip.eips.*.id, count.index)}"
  subnet_id     = "${module.subnets.subnet_ids[count.index]}"
}
