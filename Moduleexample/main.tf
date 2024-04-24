provider "aws" {
  region = "eu-west-2"
}

module "EC2Instance" {
  source = "./module/EC2Instance"
  ami_id = "ami-019a292cfb114a776"
  subnet_id = "subnet-0af346334f00590e0"
  instance_type = "t2.micro"
}

module "aws_s3_bucket" {
  source = "./modules/s3"
}
 
  
