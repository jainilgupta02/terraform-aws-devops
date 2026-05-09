terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "my_server" {
  # ami = the 'template' for your server (ubuntu)
  ami = "ami-07a00cf47dbbc844c"

  # instance_type = the size of your server
  instance_type = var.instance_type

  # A friendly name tag so you can find it in AWS
  tags = {
    Name = "MyFirstServer"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  # Bucket names must be globally unique
  bucket = var.bucket_name

  tags = {
    Name = "MyFirstBucket"
  }
}

resource "aws_vpc" "my_vpc" {
  # cidr_block = the range of IP addresses for your network
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "MyFirstVPC"
  }
}