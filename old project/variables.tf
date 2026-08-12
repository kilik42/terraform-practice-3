# Environment 
variable "region" {
  description = "AWS region"
  type        = #
}

variable "project_name" {
  description = "Project name"
  type        = #
}

variable "environment" {
  description = "Environment (dev, staging, prod)"
  type        = #
}

variable "project_directory" {
  description = "Project directory name"
  type        = #
}

# VPC 
variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = #
}

variable "public_subnet_az1_cidr" {
  description = "Public subnet AZ1 CIDR"
  type        = #
}

variable "public_subnet_az2_cidr" {
  description = "Public subnet AZ2 CIDR"
  type        = #
}

variable "private_app_subnet_az1_cidr" {
  description = "Private app subnet AZ1 CIDR"
  type        = #
}

variable "private_app_subnet_az2_cidr" {
  description = "Private app subnet AZ2 CIDR"
  type        = #
}

variable "private_data_subnet_az1_cidr" {
  description = "Private data subnet AZ1 CIDR"
  type        = #
}

variable "private_data_subnet_az2_cidr" {
  description = "Private data subnet AZ2 CIDR"
  type        = #
}

# Secrets Manager 
variable "secret_name" {
  description = "Secrets Manager secret name"
  type        = #
}

# RDS 
variable "multi_az_deployment" {
  description = "Enable Multi-AZ deployment"
  type        = #
}

variable "database_instance_identifier" {
  description = "RDS instance identifier"
  type        = #
}

variable "database_instance_class" {
  description = "RDS instance class (e.g., db.t3.micro)"
  type        = #
}

variable "database_engine" {
  description = "Database engine (mysql, postgres, mariadb)"
  type        = #
}

variable "database_engine_version" {
  description = "Database engine version (e.g., 8.0.39)"
  type        = #
}

variable "publicly_accessible" {
  description = "Make RDS publicly accessible"
  type        = #
}

# EC2
variable "amazon_linux_ami_id" {
  description = "Amazon Linux AMI ID"
  type        = #
}

variable "ec2_instance_type" {
  description = "EC2 instance type (e.g., t3.micro)"
  type        = #
}

variable "flyway_version" {
  description = "Flyway CLI version"
  type        = #
}

variable "sql_script_s3_uri" {
  description = "S3 URI for SQL migration script"
  type        = #
}

# ACM 
variable "domain_name" {
  description = "Primary domain name"
  type        = #
}

variable "alternative_names" {
  description = "Alternative domain names (SANs)"
  type        = #
}

# ALB 
variable "target_type" {
  description = "Target type (ip, instance, lambda)"
  type        = #
}

variable "health_check_path" {
  description = "Health check path"
  type        = #
  default     = #
}

# SNS 
variable "operator_email" {
  description = "Email for SNS notifications"
  type        = #
}

# Route 53
variable "record_name" {
  description = "Route 53 record name"
  type        = #
}

# ASG
variable "web_files_s3_uri" {
  description = "S3 URI for application code"
  type        = #
}

variable "service_provider_file_s3_uri" {
  description = "S3 URI for service provider file"
  type        = #
}

variable "application_code_file_name" {
  description = "Application code file name"
  type        = #
}