terraform {
  required_version = ">= 1.6.1"  # we have set the current and required version of terraform version
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.21.0"      # we have set the current and required version of aws version
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "trunks-tf-test-bucket-21102023"
  tags = {
    Name        = "Trunks bucket 21102023"
    Environment = "Test"
  }

}
