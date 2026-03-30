terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.37.0"
        }      
    }
    backend  "s3"{
        bucket = "banckend-remote"
        key = "expense-project-frontend"
        region = "us-east-1"
        dynamodb_table = "remote-locking"
    }
}

# provider authentication here
provider  "aws" {
    region = "us-east-1"
}