variable "availability_zones" {
  type        = "list"
  default     = []
  description = "List of Availability Zones for NAT Subnets"
}

variable "aws_region" {
  type        = "string"
  description = "AWS region"
}

variable "gateway_route_tables" {
  type        = "list"
  description = "List of (hopefully private!) route tables for which to set NAT gateways as default routes"
  default     = []
}

variable "name" {
  type        = "string"
  description = "NAT name. Synonymous with Role and Nodetype. Used to populate Role and Nodetype tag as well as define resource names and Name tags"
  default     = "ha-nat"
}

variable "subnets_cidr" {
  type        = "list"
  default     = []
  description = "List of CIDR blocks for NAT subnets"
}

variable "subnets_map_public_ip_on_launch" {
  type        = "string"
  default     = "0"
  description = "If you change this to true, you're probably doing it wrong"
}

variable "subnets_route_tables" {
  type        = "list"
  description = "List of (hopefully public!) route table IDs to associate with the subnets"
  default     = []
}

variable "tags" {
  type = "map"

  default = {
    Environment = ""
    Application = ""
    Tier        = ""
  }

  description = "Tags to apply to all components within the microservice"
}

variable "vpc_id" {
  type        = "string"
  description = "Parent VPC ID"
}
