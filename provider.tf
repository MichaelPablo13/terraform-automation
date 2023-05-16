terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

variable "list_types" {
        type = list(string)
        default = ["m5.large", "t2.micro", "t3.nano"]
}

variable "map_types" {
        type = map(string)
        default = {
                "sa-east-1": "t2.micro"
                "us-east-1": "t3.micro"
                "ap-south-1": "t2.small"
        }
}

resource "aws_instance" "minha-primeira-ec2" {
        ami = "ami-0889a44b331db0194"
        instance_type = var.list_types[1]
;       instance_type = var.map_types["sa-east-1"]
}