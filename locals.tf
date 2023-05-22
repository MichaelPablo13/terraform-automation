terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

locals {
  common_tags = {
    "Owner"   = "Devops Team"
    "Service" = "Frontend"
  }
}

resource "aws_instance" "app-server" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t3.micro"
  tags          = local.common_tags
}
