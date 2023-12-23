terraform {
  required_version = "~> 1.6"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "for2.c456"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    # acl = "private"
    dynamodb_table = "tesd"
  }
}

provider "aws" {
   region = "us-east-1"
  profile = "default"
  # access_key = "AKIASJ2WLZYNWJ2BZYUD"
  # secret_key = "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"
}