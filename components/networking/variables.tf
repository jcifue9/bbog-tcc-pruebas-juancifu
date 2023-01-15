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

# variable "nat_gateways_count" {
#   type        = number
#   default     = 1
#   description = "description"
# }

variable "product_prefix" {
  type = string
}
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
# variable "private_zone" {
#   type=bool
#  }
  variable "route53_domain" {
    type    = string
  }

#  variable "r53_phz_domain" {
#    type = string
#  }
  # variable "route53_private_domain" {
  #   type = string
  # }
 variable "vpc_region" {
   type=string
 }
