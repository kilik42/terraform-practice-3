# EC2 instance for database migration
resource "aws_instance" "data_migrate_ec2" {
  ami                    = #
  instance_type          = #
  subnet_id              = #
  vpc_security_group_ids = #
  iam_instance_profile   = #

  user_data_base64 = base64encode(templatefile("#", {
    FLYWAY_VERSION    = #
    SQL_SCRIPT_S3_URI = #
    RDS_ENDPOINT      = #
    RDS_DB_NAME       = #
    RDS_DB_USERNAME   = #
    RDS_DB_PASSWORD   = #
  }))

  depends_on = #

  tags = {
    Name = #
  }
}