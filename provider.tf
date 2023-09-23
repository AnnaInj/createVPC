provider "aws" {
  region = var.region
}

terraform {
  required_version = ">=1.5.3"
  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.15.0"
    }
  }
  backend "s3" {
    bucket = "create-vpc"
    key    = "frankfurt/dev/createVPC/terraform.tfstate"
    region = "eu-central-1"
  }
}