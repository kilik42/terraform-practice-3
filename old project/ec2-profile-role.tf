# IAM role for EC2 with S3 access
resource "aws_iam_role" "s3_full_access_role" {
  name = #

  assume_role_policy = jsonencode({
    Version = #
    Statement = [
      {
        Action = #
        Effect = #
        Principal = {
          Service = #
        }
      }
    ]
  })
}

# Attach S3 full access policy
resource "aws_iam_role_policy_attachment" "s3_full_access_policy_attachment" {
  role       = #
  policy_arn = #
}

# Instance profile for EC2 to assume role
resource "aws_iam_instance_profile" "s3_full_access_instance_profile" {
  name = #
  role = #
}