# Database credentials from Secrets Manager
data "aws_secretsmanager_secret_version" "secrets" {
  secret_id = #
}

# Parse secret JSON for easier reference
locals {
  secrets = #
}