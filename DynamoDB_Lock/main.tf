provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "state" {
  instance_type = "t2.micro"
  ami = "ami-019a292cfb114a776"
  subnet_id = "subnet-0af346334f00590e0"
}

resource "aws_s3_bucket" "bucket" {
    bucket = "nithyademo"
  
}

resource "aws_dynamodb_table" "locktable" {
    name = "lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
      name = "LockID"
      type = "S"
    }
  
}
