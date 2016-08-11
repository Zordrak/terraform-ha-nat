module "subnets" {
  source                  = "github.com/Zordrak/terraform-subnet-tuple.git"
  availability_zones      = "${var.availability_zones}"
  aws_region              = "${var.aws_region}"
  cidrs                   = "${var.subnets_cidr}"
  map_public_ip_on_launch = "${var.subnets_map_public_ip_on_launch}"
  name                    = "${var.name}"
  route_tables            = "${var.subnets_route_tables}"
  tags                    = "${var.tags}"
  vpc_id                  = "${var.vpc_id}"
}

resource "aws_eip" "eips" {
  count = "${length(module.subnets.subnet_ids)}"
  vpc   = "true"  
}

resource "aws_nat_gateway" "nat_gateways" {
  count         = "${length(module.subnets.subnet_ids)}"
  allocation_id = "${element(aws_eip.eips.*.id, count.index)}"
  subnet_id     = "${modules.subnets.subnet_ids[count.index]}"
}
