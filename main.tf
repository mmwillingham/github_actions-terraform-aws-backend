terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  
  backend "s3" {
    bucket         	   = "bl-terraform-tfstate"
    key              	   = "state/terraform.tfstate"
    region         	   = "us-east-2"
    encrypt        	   = true
    dynamodb_table = "bl-terraform-tfstate-lockid"
  }
}

# Configure and downloading plugins for aws
provider "aws" {
  region     = "${var.aws_region}"
}
