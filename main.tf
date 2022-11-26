terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.25.0"
    }
  }
}

provider "aws" {
  region = "${var.aws_region}"

  default_tags {
    tags = {
      Environment = "BootCamp"
    }
  }
}

data "aws_caller_identity" "current" {}


