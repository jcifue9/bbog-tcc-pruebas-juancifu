 module "ecs_cluster_private_virginia" {
   source = "github.com/bancodebogota/bbog-dig-aws-ecs-iac?ref=v3.0.0"

    providers = {
     aws = aws.virginia
   }
   create_cluster                     =   true
   cluster_name                       = "${var.product_prefix}-cluster"
   default_capacity_provider_strategy = var.ecs_clusters_capacity_provider_strategy_virginia
   tags                               = var.tags
 }