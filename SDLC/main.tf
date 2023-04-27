terraform {
  required_providers {
    aws = {
      version = ">= 4.61.0"
    }
  }

  required_version = ">= 1.3.6"
  backend "s3" {
    encrypt        = "true"
    bucket         = "terraform-vivi"
    key            = "state/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "vivi-terraform-dynamodb-table"
  }
}

provider "aws" {
  region     = "us-east-2"
}