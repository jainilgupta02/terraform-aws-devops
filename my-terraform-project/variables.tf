# Variable for the AWS region
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "ap-south-1"
}

# Variable for the instance type
variable "instance_type" {
  description = "The size of the EC2 instance"
  type        = string
  default     = "t3.micro"
}

# Variable for the bucket name
variable "bucket_name" {
  description = "A unique name for the S3 bucket"
  type        = string
  # No default - user must provide this value
}

# Variable for the VPC CIDR block
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}