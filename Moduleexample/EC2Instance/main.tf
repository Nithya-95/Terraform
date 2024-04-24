provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "Terraform" {
    ami = var.ami_id 
    instance_type = var.instance_type
    subnet_id = var.subnet_id
}
