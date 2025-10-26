provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "jibin-bucket" {
  bucket = "jibin-s3.1-bucket989"  #Use a globally unique name
  acl = "public"
}

# terraform {
#  backend "s3" {
#    bucket = "jibin-s3.1-bucket999"
#    key    = "jibin-s3.1-bucket999.tfstate"
#    region = "us-east-1"
#  }
#}
