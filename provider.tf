terraform {
    required_version = ">= 1.0.0"
    required_providers {
        aws = {
            source = "terraform/aws"
            version = "~>6.0"
        }
    }
}
provider "aws" {
    region = "us-east-1"
}
