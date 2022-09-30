output "output_ec2_id" {
  value = aws_instance.fred-ec2.id
}
output "output_primary_network_interface_id" {
  value = aws_instance.fred-ec2.primary_network_interface_id
}
