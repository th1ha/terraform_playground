terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.53"
    }
  }
}


provider "aws" {
  profile = "master"
  region  = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::xxxxxxxxxxxx:role/terraform-aws"
  }
}