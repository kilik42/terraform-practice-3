# Application Load Balancer
resource "aws_lb" "application_load_balancer" {
  name                       = #
  internal                   = #
  load_balancer_type         = #
  security_groups            = #
  subnets                    = #
  enable_deletion_protection = #

  tags = {
    Name = #
  }
}

# Target group for ALB
resource "aws_lb_target_group" "alb_target_group" {
  name        = #
  target_type = #
  port        = #
  protocol    = #
  vpc_id      = #

  health_check {
    healthy_threshold   = #
    interval            = #
    matcher             = #
    path                = #
    port                = #
    protocol            = #
    timeout             = #
    unhealthy_threshold = #
  }
}

# HTTP listener - redirects to HTTPS
resource "aws_lb_listener" "alb_http_listener" {
  load_balancer_arn = #
  port              = #
  protocol          = #

  default_action {
    type = #

    redirect {
      port        = #
      protocol    = #
      status_code = #
    }
  }
}

# HTTPS listener - forwards to target group
resource "aws_lb_listener" "alb_https_listener" {
  load_balancer_arn = #
  port              = #
  protocol          = #
  ssl_policy        = #
  certificate_arn   = #

  default_action {
    type             = #
    target_group_arn = #
  }
}