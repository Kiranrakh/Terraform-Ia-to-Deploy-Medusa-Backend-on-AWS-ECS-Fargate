terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"

    }
  }
}
provider "aws" {
  region = var.aws_region
  //profile = "myprofile"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}
