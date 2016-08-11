variable "ami_id" {
  type        = "string"
  description = "AMI ID to use for NAT ASG Launch Configuration"
}

variable "aws_region" {
  type        = "string"
  description = "AWS Region"
}

variable "environment" {
  type        = "string"
  description = "Environment Name"
}

variable "instance_type" {
  type        = "string"
  default     = "t2.micro"
  description = "instance_type to use for HA-NAT instances"
}

variable "project" {
  type        = "string"
  description = "Project Name"
}

variable "route_table_id" {
  type        = "string"
  description = "Route table ID for the NAT subnets. Should be a public table with a default route to an IGW"
}

variable "subnets_cidr" {
  type        = "list"
  description = "List of CIDR blocks for HA-NAT subnets"
  default     = []
}

variable "vpc_id" {
  type        = "string"
  description = "VPC ID"
}
