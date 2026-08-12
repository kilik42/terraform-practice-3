# Launch template for Auto Scaling Group
resource "aws_launch_template" "app_server_launch_template" {
  name                   = #
  image_id               = #
  instance_type          = #
  description            = #
  vpc_security_group_ids = #

  iam_instance_profile {
    name = #
  }

  monitoring {
    enabled = #
  }

  user_data = base64encode(templatefile("#", {
    PROJECT_NAME                 = #
    ENVIRONMENT                  = #
    RECORD_NAME                  = #
    DOMAIN_NAME                  = #
    WEB_FILES_S3_URI             = #
    SERVICE_PROVIDER_FILE_S3_URI = #
    APPLICATION_CODE_FILE_NAME   = #
    RDS_ENDPOINT                 = #
    RDS_DB_NAME                  = #
    RDS_DB_USERNAME              = #
    RDS_DB_PASSWORD              = #
  }))
}

# Auto Scaling Group for application servers
resource "aws_autoscaling_group" "auto_scaling_group" {
  vpc_zone_identifier = #
  desired_capacity    = #
  max_size            = #
  min_size            = #
  name                = #
  health_check_type   = #

  launch_template {
    id      = #
    version = #
  }

  tag {
    key                 = #
    value               = #
    propagate_at_launch = #
  }

  lifecycle {
    ignore_changes        = #
    create_before_destroy = #
  }

  depends_on = #
}

# Attach ASG to ALB target group
resource "aws_autoscaling_attachment" "asg_alb_target_group_attachment" {
  autoscaling_group_name = #
  lb_target_group_arn    = #

  depends_on = #
}

# SNS notifications for ASG events
resource "aws_autoscaling_notification" "webserver_asg_notifications" {
  group_names = #

  notifications = [
    "autoscaling:EC2_INSTANCE_LAUNCH",
    "autoscaling:EC2_INSTANCE_TERMINATE",
    "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
    "autoscaling:EC2_INSTANCE_TERMINATE_ERROR",
  ]

  topic_arn = #
}