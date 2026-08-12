# S3 backend with DynamoDB state locking
terraform {
  backend "s3" {
    bucket         = #
    key            = #
    region         = #
    dynamodb_table = #
    profile        = #
  }
}