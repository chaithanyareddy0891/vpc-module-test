terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket = "ter-prac-on-dyna"
    key = "vpc-demo"
    region = "us-east-1"
    dynamodb_table = "state_locking"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
