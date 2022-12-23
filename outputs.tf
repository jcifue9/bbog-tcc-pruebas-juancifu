output "vpc_azs_virginia" {
  value = module.networking.vpc_azs_virginia
}

output "vpc_private_subnets_ids_virginia" {
  value = module.networking.vpc_private_subnets_ids_virginia
}

output "vpc_public_subnets_ids_virginia" {
  value = module.networking.vpc_public_subnets_ids_virginia
}

output "vpc_id_virginia" {
  value = module.networking.vpc_id_virginia
}

output "private_subnets_cidr_blocks_virginia" {
  value = module.networking.private_subnets_cidr_blocks_virginia
}
  output "ecs_cluster_private_name_virginia" {
    value = module.backend.ecs_cluster_private_name_virginia
  }

  output "ecs_cluster_private_arn_virginia" {
    value = module.backend.ecs_cluster_private_arn_virginia
  }

output "vpc_cidr_block_virginia" {
  value = module.networking.vpc_cidr_block_virginia
}