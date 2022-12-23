# module "alb_0_virginia" {
#    source = "github.com/bancodebogota/bbog-dig-aws-load-balancer-iac?ref=v5.0.0"

#     providers = {
#     aws = aws.virginia
#   }
#   name                                = "${var.product_prefix}-alb-0"
#   custom_domains_certificates_indexes = [0]
#   create_lb                           = true
#   create_waf                          = false
#   create_certificate_validation       = true
#   enable_cross_zone_load_balancing    = true
#   internal                            = false
#   load_balancer_type                  = "application"
#   vpc_id                              = var.vpc_id_virginia
#   subnets                             = var.vpc_public_subnets_ids_virginia

#     custom_domains = [
#     {
#       name    = "alb.${var.route53_domain}"
#       zone_id = var.public_r53_zone_ids[0]
#     },
#   ]

# }