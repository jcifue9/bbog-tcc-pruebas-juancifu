locals {
  account_id     = module.utilities.account_id
  
}
  module "utilities" {
     source = "github.com/bancodebogota/bbog-dig-aws-utilities-iac?ref=v0.2.0"


  r53_domains = [var.route53_domain]
  }


module "backend" {
  source = "./components/backend"

 
  vpc_id_virginia                                  = module.networking.vpc_id_virginia
  vpc_cidr_virginia                                = var.vpc_cidr_virginia
  vpc_azs_virginia                                 = module.networking.vpc_azs_virginia
  vpc_private_subnets_ids_virginia                 = module.networking.vpc_private_subnets_ids_virginia
  vpc_public_subnets_ids_virginia                  = module.networking.vpc_public_subnets_ids_virginia
  vpc_private_subnets_cidrs_virginia               = var.vpc_private_subnets_virginia
  tags                                             = var.tags
  public_r53_zone_ids                              = module.utilities.r53_zone_ids
  route53_domain                                   = var.route53_domain
  public_r53_domains                               = [var.route53_domain]
  
   product_prefix                                   = var.product_prefix
  
  private_subnets_cidr_blocks_virginia             = module.networking.private_subnets_cidr_blocks_virginia
  ecs_clusters_capacity_provider_strategy_virginia = var.ecs_clusters_capacity_provider_strategy_virginia
  
}
module "networking" {
  source = "./components/networking"

 
 vpc_cidr_virginia                 = var.vpc_cidr_virginia
  vpc_azs_virginia                  = var.vpc_azs_virginia
  vpc_private_subnets_virginia      = var.vpc_private_subnets_virginia
  vpc_public_subnets_virginia       = var.vpc_public_subnets_virginia
  vpc_enable_dns_hostnames_virginia = var.vpc_enable_dns_hostnames_virginia
  vpc_enable_nat_gateway_virginia   = var.vpc_enable_nat_gateway_virginia
  #nat_gateways_count_virginia       = var.nat_gateways_count_virginia
  product_prefix                    = var.product_prefix
  #route53_domain                                                = var.route53_domain
  #r53_phz_domain                                                = var.r53_phz_domain
  #vpc_id                           =module.vpc_virginia.vpc_id
  vpc_region                        =var.vpc_region
  tags                              =var.tags
  #private_zone                     = var.private_zone

}

