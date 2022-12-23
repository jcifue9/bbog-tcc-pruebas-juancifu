# variable "environment" {
#   description = "environment"
#   type        = string
# }

variable "vpc_cidr_virginia" {
  type = string
}

variable "vpc_azs_virginia" {
  type    = list(string)
  default = []
}

variable "vpc_private_subnets_virginia" {
  type    = list(string)
  default = []
}

variable "vpc_public_subnets_virginia" {
  type    = list(string)
  default = []
}

variable "vpc_enable_dns_hostnames_virginia" {
  type = bool
}

variable "vpc_enable_nat_gateway_virginia" {
  type = bool
}

# variable "nat_gateways_count_virginia" {
#   type        = number
#   default     = 1
#   description = "description"
# }

variable "route53_domain" {
  type    = string
}
variable "r53_phz_domain" {
  type = string
}

variable "product_prefix" {
  type = string
}

 variable "ecs_clusters_capacity_provider_strategy_virginia" {
   type = any
 }

variable "tags" {
  type = map(string)
}
 variable "vpc_region" {
   type=string
 }
#  variable "private_zone" {
#    type=bool
#   }