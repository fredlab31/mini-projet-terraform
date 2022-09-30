resource "aws_ebs_volume" "fred-ebs" {
  availability_zone = var.ebs_availability_zone
  size              = var.ebs_size

  tags = {
    Name = "${var.maintainer}-ebs"
  }
}