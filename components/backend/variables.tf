variable "tags" {
  type = map(string)
}

variable "vpc_id_virginia" {
  type = string
}

variable "vpc_cidr_virginia" {
  type = string
}

variable "vpc_azs_virginia" {
  type    = list(string)
  default = []
}

variable "vpc_private_subnets_ids_virginia" {
  type    = list(string)
  default = []
}

variable "vpc_public_subnets_ids_virginia" {
  type    = list(string)
  default = []
}

variable "vpc_private_subnets_cidrs_virginia" {
  type = list(string)
}
  variable "route53_domain" {
    type    = string
   
  }

  variable "public_r53_domains" {
    type = list(string)
  }

 variable "product_prefix" {
   type = string
 }

 variable "public_r53_zone_ids" {
    type = list(string)
  }

variable "private_subnets_cidr_blocks_virginia" {
  type = list(string)
}

 variable "ecs_clusters_capacity_provider_strategy_virginia" {
   type = any
 }
