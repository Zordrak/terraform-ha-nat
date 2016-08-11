### POC ###

module "microservice_ha-nat" {
  source                          = "github.com/Zordrak/terraform-microservice"
  asg_size_max                    = "${length(var.subnets_cidr)}"
  asg_size_min                    = "${length(var.subnets_cidr)}"
  availability_zones              = "${data.aws_availability_zones.available.names}"
  aws_region                      = "${var.aws_region}"
  lc_ami_id                       = "${var.ami_id}"
  lc_instance_type                = "${var.instance_type}"
  name                            = "ha-nat"
  subnets_cidr                    = "${var.subnets_cidr}"
  subnets_map_public_ip_on_launch = true
  subnets_route_table_id          = "${var.route_table_id}"
  vpc_id                          = "${var.vpc_id}"

  tags {
    Environment = "${var.environment}"
    Application = "${var.project}"
    Tier        = "PUB"
  }
}
