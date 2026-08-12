# Security group for EC2 Instance Connect Endpoint
resource "aws_security_group" "eice_security_group" {
  name        = var.eice_security_group_name
  description = "Allow SSH from VPC CIDR"
  vpc_id      = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.vpc_cidr]
  }

  tags = {
    Name = var.eice_security_group_name
  }
}

# Security group for Application Load Balancer
resource "aws_security_group" "alb_security_group" {
  name        = var.alb_security_group_name
  description = "HTTP/HTTPS from internet"
  vpc_id      = var.vpc_id

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]   
  }

  ingress {
    description = "HTTPS"
    from_port   = #
    to_port     = #
    protocol    = #
    cidr_blocks = #
  }

  egress {
    from_port   = #
    to_port     = #
    protocol    = #
    cidr_blocks = #
  }

  tags = {
    Name = #
  }
}

# Security group for application servers (ECS, EC2)
resource "aws_security_group" "app_server_security_group" {
  name        = #
  description = "HTTP/HTTPS from ALB, SSH from EICE"
  vpc_id      = #

  ingress {
    description     = "SSH from EICE"
    from_port       = #
    to_port         = #
    protocol        = #
    security_groups = #
  }

  ingress {
    description     = "HTTP from ALB"
    from_port       = #
    to_port         = #
    protocol        = #
    security_groups = #
  }

  ingress {
    description     = "HTTPS from ALB"
    from_port       = #
    to_port         = #
    protocol        = #
    security_groups = #
  }

  egress {
    from_port   = #
    to_port     = #
    protocol    = #
    cidr_blocks = #
  }

  tags = {
    Name = #
  }
}

# Security group for data migration server
resource "aws_security_group" "db_migrate_server_security_group" {
  name        = #
  description = "SSH from EICE"
  vpc_id      = #

  ingress {
    description     = "SSH from EICE"
    from_port       = #
    to_port         = #
    protocol        = #
    security_groups = #
  }

  egress {
    from_port   = #
    to_port     = #
    protocol    = #
    cidr_blocks = #
  }

  tags = {
    Name = #
  }
}

# Security group for database (RDS, Aurora)
resource "aws_security_group" "database_security_group" {
  name        = #
  description = "MySQL/Aurora from app and migration servers"
  vpc_id      = #

  ingress {
    description     = "MySQL/Aurora from app servers"
    from_port       = #
    to_port         = #
    protocol        = #
    security_groups = #
  }

  ingress {
    description     = "MySQL/Aurora from data migration server"
    from_port       = #
    to_port         = #
    protocol        = #
    security_groups = #
  }

  egress {
    from_port   = #
    to_port     = #
    protocol    = #
    cidr_blocks = #
  }

  tags = {
    Name = #
  }
}