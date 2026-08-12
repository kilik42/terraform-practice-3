# terraform {
#     backend "s3" {
#         bucket         = "my-terraform-state-bucket"
#         key            = "nest-app/terraform.tfstate"
#         region         = "us-east-1"
#         dynamodb_table = "terraform-locks"
#         encrypt        = true
#     }
# }

# create a new S3 bucket for the Terraform state
resource "aws_s3_bucket" "terraform_state" {
  bucket = var.aws_bucket_name
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = var.aws_bucket_name
    Environment = var.environment
  }
  
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
