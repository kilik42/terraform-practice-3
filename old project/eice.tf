# EC2 Instance Connect Endpoint for private subnet SSH access
resource "aws_ec2_instance_connect_endpoint" "instance_connect_endpoint" {
  subnet_id          = #
  security_group_ids = #
  tags = {
    Name = #
  }
}