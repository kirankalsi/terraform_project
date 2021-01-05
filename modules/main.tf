module "vnets" {
  source = "./vnets"

  environment = var.environment
  region = var.region
}

module "vms" {
  source = "./vms"

  environment = var.environment
  region = var.region
  
  public_subnet_id = module.subnets.public_subnet_id
  private_subnet_id = module.subnets.private_subnet_id
}

module "subnets" {
  source = "./subnets"

  environment = var.environment
  region = var.region
  vnet_id = module.vnets.vnet_id
}