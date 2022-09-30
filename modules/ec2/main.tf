data "aws_ami" "fred-ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*"]
  }
}
resource "aws_instance" "fred-ec2" {
  ami               = data.aws_ami.fred-ami.id
  instance_type     = var.instance_type
  key_name          = var.key_name
  availability_zone = var.availability_zone
  user_data         = file("script.sh")
  tags = {
    Name = "${var.maintainer}-ec2"
  }
}
resource "local_file" "variable_outputs" {
  filename = "ip_ec2.txt"
  content  = "Elastic IP publique : ${var.public_ip}"
}
