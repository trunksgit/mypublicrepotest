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
  region = var.region
}