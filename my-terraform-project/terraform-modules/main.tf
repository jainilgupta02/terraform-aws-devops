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
  region = "ap-south-1"
}

module "my_vpc" {
  # source = path to the module folder
  source = "./modules/vpc"

  # Pass values into the module's input variables
  vpc_name    = "production-vpc"
  vpc_cidr    = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
}