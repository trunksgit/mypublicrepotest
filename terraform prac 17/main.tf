terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.21.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "trunks-vpc" {
    cidr_block = "192.168.0.0/16"
    tags = {
      Name = "trunks-vpc" 
    }
  
}