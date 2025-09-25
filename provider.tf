terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws" 
            version = "5.98.0"
        }
    }
}
provider "aws" {
    #configuration otions 
    region = "us-east-1"
}