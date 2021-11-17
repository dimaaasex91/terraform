# terraform {
#   required_version = ">=1.0.0"
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 3.0"
#     }
#   }
# }

provider "aws" {
  region         = "us-east-2"
  access_key = "AKIAQFO7CBOZGYO5RHNA"
  secret_key = "/n6JHztgI4/suXvJbvEhBXIfbFZJwTXCF3hI3e5N"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    "Name" = "terraform-example"
  }
}