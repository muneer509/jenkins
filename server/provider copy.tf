terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.19.0"
    }
  }
  backend "s3" {
    bucket         = "mxyz-remote-state"
    key            = "k8/eksctl/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "state-locking"

  }
}



provider "aws" {
  # Configuration options
  region = "us-east-1"
}