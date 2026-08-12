# DNS record pointing to ALB
resource "aws_route53_record" "site_domain" {
  zone_id = #
  name    = #
  type    = #

  alias {
    name                   = #
    zone_id                = #
    evaluate_target_health = #
  }
}