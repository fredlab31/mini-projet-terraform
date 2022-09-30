terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key = "VOS CLES AWS ICI"
  secret_key = "VOS CLES AWS ICI"
}

module "keygen" {
  source = "../modules/keygen"
  maintainer = var.maintainer
}

module "ebs" {
  source = "../modules/ebs"
  ebs_availability_zone = var.availability_zone
  ebs_size = var.ebs_size
  maintainer = var.maintainer
}

module "ec2" {
  source = "../modules/ec2"
  instance_type = var.instance_type
  maintainer = var.maintainer
  key_name = module.keygen.output_key_name
  availability_zone = var.availability_zone
  public_ip = module.eip.output_eip_ip
}

module "eip" {
  source = "../modules/eip"
  maintainer = var.maintainer
}

module "sg" {
  source = "../modules/sg"
  maintainer = var.maintainer
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = module.ebs.output_ebs_id
  instance_id = module.ec2.output_ec2_id
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = module.ec2.output_ec2_id
  allocation_id = module.eip.output_eip_id
}

resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = module.sg.output_sg_id
  network_interface_id = module.ec2.output_primary_network_interface_id
}

output "elastic_public_ip_addr" {
  value = module.eip.output_eip_ip
}
