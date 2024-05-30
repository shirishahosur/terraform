terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "shirisha-remote-state"
    key    = "ec2-module-test"
    region = "us-east-1"
    dynamodb_table = "shirisha-locking"
  }
}
# provide authentication here
provider "aws" {
  region = "us-east-1"
}