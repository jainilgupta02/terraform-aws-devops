# Show the public IP address of the EC2 instance
output "server_ip" {
  description = "The public IP address of my server"
  value       = aws_instance.my_server.public_ip
}

# Show the name of the S3 bucket
output "bucket_name" {
  description = "The name of the S3 bucket created"
  value       = aws_s3_bucket.my_bucket.bucket
}

# Show the VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.my_vpc.id
}