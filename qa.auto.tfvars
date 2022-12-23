route53_domain         = "labdigbdbqatccprueba.com"
#route53_private_domain = "tccprueba.qa"
r53_phz_domain   = "tccprueba.digitalbdb.qa"

product_prefix = "tcc" # prefijo que se agrega al nombre de los servicios

#environment = "qa" # es la rama que se va a usar 

vpc_cidr_virginia                 = "10.22.128.0/25"
vpc_azs_virginia                  = ["us-west-2a", "us-west-2b", "us-west-2c"]
vpc_private_subnets_virginia      = ["10.22.128.0/28", "10.22.128.32/28", "10.22.128.64/28"]
vpc_public_subnets_virginia       = ["10.22.128.16/28", "10.22.128.48/28", "10.22.128.80/28"]
vpc_enable_dns_hostnames_virginia = true # si la vpc maneja dns
vpc_enable_nat_gateway_virginia   = true # si la vpc maneja nat gateway
#nat_gateways_count                = 1

tags = {
        "Team"        =  "TCC"
        "Description" =  "Credito Comercial"
        "CostCenter"  =  "9937"
        
        "BU"          =  "Gerencia de Desarrollo Agil"
        "NumberReg"   =  "000001"
        "Deploy"      =  "Terraform"
        "Cloud"       =  "AWS"
    }
#route53
#private_zone=true
vpc_region="us-west-2"
#ecs_cluster
#create_cluster =true
 ecs_clusters_capacity_provider_strategy_virginia = [
   {
     name   = "FARGATE_SPOT"
     weight = 5
     base   = 5
   },
 ]