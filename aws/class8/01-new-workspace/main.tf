provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = var.vpc_security_group_ids
  #workspace_name         = var.workspace_name

  tags = {
    Name      = "${terraform.workspace}-EC2"
    Workspace = terraform.workspace
  }
}
