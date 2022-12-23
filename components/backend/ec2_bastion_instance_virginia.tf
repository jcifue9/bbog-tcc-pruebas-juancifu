# module "ec2_bastion_instance_virginia" {
#   source = "github.com/bancodebogota/bbog-dig-aws-bastion-instance-iac?ref=v8.0.0"

#   providers = {
#     aws = aws.virginia
#   }

#   create_bastion = true
#   vpc_id         = var.vpc_id_virginia
#   subnet_id      = var.vpc_private_subnets_ids_virginia[0]
#   instance_type  = "t4g.micro"
#   user_data      = <<EOF
#     #! /bin/bash
#     sudo yum update -y
#     sudo yum install -y redis wget docker jq
#   EOF

#   security_group = {
#     ingress = [
#       {
#         from_port   = 0
#         to_port     = 0
#         protocol    = "-1"
#         description = "Internet"
#         cidr_blocks = flatten([var.private_subnets_cidr_blocks_virginia])
#       },
#     ]
#     egress = [
#       {
#         from_port   = 0
#         to_port     = 0
#         protocol    = "-1"
#         description = "Internet"
#         cidr_blocks = ["0.0.0.0/0"]
#       },
#     ]
#   }
# }

