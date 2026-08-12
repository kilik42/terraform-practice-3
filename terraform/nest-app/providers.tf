terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
    
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
  profile = "cloud-project"

  default_tags {
    tags = {
        Automation = "Terraform"
        Project   = var.project_name
      Environment = var.environment
    }
  }
}

# Create a VPC
# resource "aws_vpc" "example" {
#   cidr_block = "10.0.0.0/16"
# }