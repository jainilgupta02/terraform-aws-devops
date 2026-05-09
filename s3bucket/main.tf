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

# s3 resource name
resource "aws_s3_bucket" "jay" {
  bucket = "jay-gupta-devops-2026-bucket"

  tags = {
    Name        = "My S3 Bucket"
    Environment = "Dev"
  }
}

# output design
output "bucket_arn" {
  value = aws_s3_bucket.jay.arn
}
output "bucket_id" {
  value = aws_s3_bucket.jay.id
}

#versioning enabled
resource "aws_s3_bucket_versioning" "jay_versioning" {
  bucket = aws_s3_bucket.jay.id
    versioning_configuration {
        status = "Enabled"
    }
}

#public access block
resource "aws_s3_bucket_public_access_block" "jay_public_access_block" {
  bucket = aws_s3_bucket.jay.id
    block_public_acls       = true
    block_public_policy     = true
    ignore_public_acls      = true
    restrict_public_buckets = true
}

#encryption enabled
resource "aws_s3_bucket_server_side_encryption_configuration" "jay_encryption" {
  bucket = aws_s3_bucket.jay.id
    rule {
        apply_server_side_encryption_by_default {
            sse_algorithm = "AES256"
        }
    }
}