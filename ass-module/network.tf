module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.21.0"


  name = "shopnaija-vpc"
  cidr = "172.50.0.0/16"

  azs = ["us-east-1a", "us-east-1b"]


  public_subnets  = ["172.50.1.0/24", "172.50.2.0/24"]          
  private_subnets = ["172.50.3.0/24", "172.50.4.0/24",           
                     "172.50.5.0/24", "172.50.6.0/24"]           

  
  enable_nat_gateway     = true
  single_nat_gateway     = false    
  one_nat_gateway_per_az = true     


  enable_dns_hostnames = true       
  enable_dns_support   = true      

  public_subnet_tags = {
    Type = "public"
    Tier = "load-balancer-bastion"
  }

  private_subnet_tags = {
    Type = "private"
    Tier = "app-and-db"
  }

  tags = {
    Terraform   = "true"
    Project     = "ShopNaija"
    Environment = "production"
  }
}