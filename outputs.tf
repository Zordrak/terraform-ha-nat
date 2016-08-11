output "eni_id" {
  value = "${aws_network_interface.network_interface.id}"
}

output "security_group_id" {
  value = "${module.ha-nat.security_group_id}"
}

output "security_group_name" {
  value = "${module.ha-nat.security_group_name}"
}

output "launch_configuration_id" {
  value = "${module.ha-nat.launch_configuration_id}"
}

output "autoscaling_group_id" {
  value = "${module.ha-nat.autoscaling_group_id}"
}

output "iam_instance_profile_id" {
  value = "${module.ha-nat.iam_instance_profile_id}"
}

output "iam_instance_profile_arn" {
  value = "${module.ha-nat.iam_instance_profile_arn}"
}

output "iam_instance_profile_name" {
  value = "${module.ha-nat.iam_instance_profile_name}"
}

output "iam_instance_profile_unique_id" {
  value = "${module.ha-nat.iam_instance_profile_unique_id}"
}

output "iam_role_arn" {
  value = "${module.ha-nat.iam_role_arn}"
}

output "iam_role_unique_id" {
  value = "${module.ha-nat.iam_role_unique_id}"
}

output "subnet_ids" {
  value = "${module.ha-nat.subnet_ids}"
}
