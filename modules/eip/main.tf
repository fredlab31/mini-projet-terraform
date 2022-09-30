resource "aws_eip" "fred-eip" {
  vpc = true
  tags = {
    Name = "${var.maintainer}-eip"
  }

}
