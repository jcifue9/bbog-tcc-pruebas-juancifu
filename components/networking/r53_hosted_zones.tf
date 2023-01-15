 module "r53_phz_virginia" {
   source="github.com/bancodebogota/bbog-dig-aws-route53-iac?ref=v3.0.0"
    providers = {
     aws = aws.virginia
   }
   #private_zone      =var.private_zone
   #zone_name         =var.r53_phz_domain
   zone_name         =var.route53_domain
   vpc_id            =module.vpc_virginia.vpc_id
   vpc_region        =var.vpc_region
   tags              =var.tags


   }

#   module "participating_account_virginia" {
#   source = "github.com/bancodebogota/bbog-dig-aws-route53-iac//modules/resolver?ref=v3.0.0"

#   providers = {
#     aws         = aws.virginia
#     aws.central = aws.central_virginia
#   }

#   create_association_rule = true
#   create_association_auth = true
#   vpc_dns                 = var.central_vpc_id

#   vpc_participating_account = [
#     module.vpc_virginia.vpc_id
#   ]

#   zone_id_participating_account = [
#     module.r53_phz_virginia.zone_id,
#   ]

#   resolver_rule_id = var.resolver_rule_id
# }