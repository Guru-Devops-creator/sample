terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }
  backend "s3" {
    bucket         = "81s-remote-state-aws"
    key            = "for-each-demo" # we can use this bucket for diffrent repos with diffrent key
    region         = "us-east-1"
    dynamodb_table = "81s-locking"
  }

}
provider "aws" {
  region = "us-east-1"
}