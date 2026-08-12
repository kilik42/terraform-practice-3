resource "aws_db_subnet_group" "database_subnet_group" {
  name       = "${var.project_name}-subnet-group"
  subnet_ids = [aws_subnet.public.id, aws_subnet.private.id]
  description = "Subnet group for RDS instance"

  tags = {
    Name        = "${var.project_name}-subnet-group"
    Environment = var.environment
  }
}

# Create an RDS instance
resource "aws_db_instance" "default" {
  allocated_storage           = 50
  auto_minor_version_upgrade  = false                         # Custom for Oracle does not support minor version upgrades
  custom_iam_instance_profile = 
  backup_retention_period     = 
  db_subnet_group_name        = 
  engine                      = 
  engine_version              = 
  identifier                  = 
  instance_class              = 
  kms_key_id                  = 
  license_model               =
  multi_az                    = 
  password                    = 
  username                    = 
  storage_encrypted           = 

  timeouts {
    create = "3h"
    delete = "3h"
    update = "3h"
  }
}

