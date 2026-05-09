terraform {
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }

  backend "s3" {
    bucket         = "my-bucket-jainil-2026"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dynamodb-state-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}