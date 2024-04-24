provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = "eu-west-2"
  alias = "abc"
}
provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = "eu-west-1"
  alias = "xyz"  
}
resource "aws_instance" "sample" {
    instance_type = var.instance_type
    ami = var.ami
    subnet_id = var.subnet_id 
    key_name = "Seyoen"
    provider = "aws.abc"
    tags = {
        name = "Terraform"
    }
}
resource "aws_instance" "example" {
    instance_type = var.instance_type
    ami = var.ami_id
    subnet_id = var.subnet_id1
    provider = "aws.xyz"

} 
