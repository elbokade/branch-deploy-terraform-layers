terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.3"
    }
  }

  backend "s3" {
    region         = "eu-west-1"
    bucket         = "elbokade-tf-state-backend"
    key            = "branch-deploy-terraform-layers/20_dynamo/terraform.tfstate"
    dynamodb_table = "elbokade-tf-state-backend-lock"
    encrypt        = "true"
  }
}

provider "aws" {
  region = var.region
}

variable "region" {
  type = string
}
