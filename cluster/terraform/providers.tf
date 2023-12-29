provider "aws" {
  default_tags {
    tags = local.tags
  }

  region = "us-east-1"
}

terraform {
  cloud {
    organization = "carim"

    workspaces {
      name = "eks-workshop-v2"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.67.0"
    }
  }

  required_version = ">= 1.4.2"
}
