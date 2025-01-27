provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = local.tags
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.67.0"
    }
  }
  
  required_version = ">= 1.4.2"
}

# locals {
#   tags = {
#     created-by = "eks-demo"
#     env        = var.cluster_name
#   }
# }
