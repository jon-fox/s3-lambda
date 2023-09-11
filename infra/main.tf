terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.16.1"
    }
  }
}

# provider "aws" {
#   # Configuration options
# }

resource "aws_s3_bucket" "lambda_s3_bucket" {
  bucket = "lambda-s3-integration-test-bucket"

  tags = {
    Name        = "Test_Bucket"
    Environment = "Dev"
  }
}