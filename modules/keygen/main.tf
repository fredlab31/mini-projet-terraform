resource "tls_private_key" "fred-private-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "devops-fred-key" {
  key_name   = "${var.maintainer}-key"
  public_key = tls_private_key.fred-private-key.public_key_openssh
}

resource "local_file" "fred-private-pem" {
  content         = tls_private_key.fred-private-key.private_key_pem
  filename        = "${var.maintainer}-key.pem"
  file_permission = "0600"
}

