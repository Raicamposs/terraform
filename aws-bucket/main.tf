terraform {

  required_version = ">= 1.0.0"

  required_providers {
    # The AWS Docs : https://registry.terraform.io/providers/hashicorp/aws/latest/docs
    aws = {
      source  = "hashicorp/aws"
      version = "4.37.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "Raiane Campos"
      managed_by = "terraform"
    }
  }
}
