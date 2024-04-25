provider "aws" {
 region = "eu-west-2" 
}

module "aws_instance" {
  source = "../module/EC2Instance"
  ami_id = "ami-019a292cfb114a776"
  subnet_id = "subnet-0af346334f00590e0"
  instance_type = lookup(var.instance_type,terraform.workspace,"value")
}
