terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.5.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA3XS5G77IZIT65IXM"
  secret_key = "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"
}