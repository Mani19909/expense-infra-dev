terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.28.0"
        }      
    }
    backend  "s3"{
        bucket = "banckend-remote"
        key = "expense-project-bastion"
        region = "us-east-1"
        dynamodb_table = "remote-locking"
    }
}

# provider authentication here
provider  "aws" {
    region = "us-east-1"
}