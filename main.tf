terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

# ./terraform.tf

variable "domain_name" {
  type = string
}

module "website" {
  source = "./.deploy/terraform/static-site"
  domain_name = var.domain_name
}
