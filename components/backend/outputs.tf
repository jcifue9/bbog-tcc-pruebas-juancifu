# output "alb_0_certificate_arn_virginia" {
#   value = module.alb_0_virginia.certificate_arn
# }

# output "alb_0_arn_virginia" {
#   value = module.alb_0_virginia.this_lb_arn
# }

# output "alb_0_arn_suffix_virginia" {
#   value = try(module.alb_0_virginia.this_lb_arn_suffix, null)
# }

 output "ecs_cluster_private_name_virginia" {
   value = module.ecs_cluster_private_virginia.cluster_name
 }

output "ecs_cluster_private_arn_virginia" {
   value = module.ecs_cluster_private_virginia.this_ecs_cluster_arn
 }