output "subnet_ids" {
  value = ["${module.subnets.subnet_ids}"]
}

output "


id - The ID of the NAT Gateway.
allocation_id - The Allocation ID of the Elastic IP address for the gateway.
subnet_id - The Subnet ID of the subnet in which the NAT gateway is placed.
network_interface_id - The ENI ID of the network interface created by the NAT gateway.
private_ip - The private IP address of the NAT Gateway.
public_ip - The public IP address of the NAT Gateway. 
