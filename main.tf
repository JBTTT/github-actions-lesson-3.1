provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "jibin-s3.1-bucket999"  #Use a globally unique name
  force_destroy = true
}

terraform {
  backend "s3" {
    bucket = "jibin-s3.1-bucket999"
    key    = "jibin-s3.1-bucket999.tfstate"
    region = "us-east-1"
  }
}
