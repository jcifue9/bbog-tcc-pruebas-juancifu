module "vpc_virginia" {
  source = "github.com/bancodebogota/bbog-dig-aws-vpc-iac?ref=v10.6.1" # se agrega el modulo de github de la vpc echo por labs

  providers = {
    aws = aws.virginia #se llama la region en donde se va a publicar
  }

  name                 = "${var.product_prefix}-vpc" # se trae de qa.auto.tfvars
  cidr                 = var.vpc_cidr_virginia
  azs                  = var.vpc_azs_virginia
  private_subnets      = var.vpc_private_subnets_virginia
  public_subnets       = var.vpc_public_subnets_virginia
  enable_dns_hostnames = var.vpc_enable_dns_hostnames_virginia
  enable_nat_gateway   = var.vpc_enable_nat_gateway_virginia
  #nat_gateways_count   = var.nat_gateways_count
  create_vpc_endpoint  = false
  endpoints            = []
  create_tpa           = true
  tags                 = var.tags

}