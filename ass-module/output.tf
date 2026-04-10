
output "vpc_id" {
  description = "The ID of the ShopNaija VPC"
  value       = module.vpc.vpc_id
}


output "public_subnet_ids" {
  description = "List of public subnet IDs (Load Balancer and Bastion tier)"
  value       = module.vpc.public_subnets
}

output "private_subnet_ids" {
  description = "List of all private subnet IDs (App and DB tier)"
  value       = module.vpc.private_subnets
}


