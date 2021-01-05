provider "azurerm" {
  features {}
}

module "Paris" {
  source = "./modules"
  environment = "staging"
  region = "francecentral"
  timezone = "GMT Standard Time"
  out_hour = 22
  out_minute = 30
  in_hour = 2
  in_minute = 30
}

module "London" {
  source = "./modules"
  environment = "development"
  region = "uksouth"
  timezone = "GMT Standard Time"
  out_hour = 17
  out_minute = 30
  in_hour = 9
  in_minute = 0
}

module "Mumbai" {
  source = "./modules"
  environment = "production"
  region = "eastasia"
  timezone = "GMT Standard Time"
  out_hour = 22
  out_minute = 30
  in_hour = 2
  in_minute = 30
}