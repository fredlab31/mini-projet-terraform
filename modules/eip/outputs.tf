output "output_eip_id" {
  value = aws_eip.fred-eip.id
}
output "output_eip_ip" {
  value = aws_eip.fred-eip.public_ip
}
