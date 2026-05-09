resource "aws_s3_bucket" "app_bucket" {
  bucket = "my-app-bucket-jainil"

  tags = {
    Name        = "My App Bucket"
    Environment = "prod"
  }
}
