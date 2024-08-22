terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "tcp-devops-1x19x"
    region         = "us-east-1"
    key            = "terraform.tfstate"
    dynamodb_table = "tcp-devops-state-lock-table"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
