output "vpc_azs_virginia" {
  value = module.vpc_virginia.azs
}

output "vpc_private_subnets_ids_virginia" {
  value = module.vpc_virginia.private_subnets
}

output "vpc_public_subnets_ids_virginia" {
  value = module.vpc_virginia.public_subnets
}

output "vpc_id_virginia" {
  value = module.vpc_virginia.vpc_id
}

output "private_subnets_cidr_blocks_virginia" {
  value = module.vpc_virginia.private_subnets_cidr_blocks
}

output "vpc_cidr_block_virginia" {
  value = module.vpc_virginia.vpc_cidr_block
}