provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "jibin-s3.1-bucket999"
    key    = "jibin-s3.1-bucket999.tfstate"
    region = "us-east-1"
  }
}
