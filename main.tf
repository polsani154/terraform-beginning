terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
 profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
  subnet_id="subnet-02e6f3ed718c3c8ab"
  key_name="main"
}