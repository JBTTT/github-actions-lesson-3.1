provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "jibin-s3.1-bucket999"  #Use a globally unique name
}

resource "aws_s3_bucket_public_access_block" "block_public_access" {
  bucket = aws_s3_bucket.example_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

terraform {
  backend "s3" {
    bucket = "jibin-s3.1-bucket999"
    key    = "jibin-s3.1-bucket999.tfstate"
    region = "us-east-1"
  }
}
