# terraform-ha-nat
HA-NAT terraform module

```terraform
data_source "aws_availability_zones" "available" {}

module "ha-nat" {
  source                          = "gitlab.com/cartest/terraform-ha-nat.git"
  availability_zones              = "${data.aws_availability_zones.available.names}"
  aws_region                      = "${var.aws_region}"
  name                            = "ha-nat"
  subnets_cidrs                   = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
  subnets_route_tables            = ["${aws_route_table.public.id}"]
  vpc_id                          = "${var.vpc_id}"

  tags {
    Environment = "${var.environment}"
    Application = "${var.project}"
    Tier        = "PUB"
  }
}
```
