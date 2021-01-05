provider "azurerm" {
  features {}
}

module "Paris" {
  source = "./scale-set"
  environment = "staging"
  region = "francecentral"
  timezone = "Central Europe Standard Time"
  out_hour = 22
  out_minute = 30
  in_hour = 2
  in_minute = 30
}

module "London" {
  source = "./scale-set"
  environment = "development"
  region = "uksouth"
  timezone = "GMT Standard Time"
  out_hour = 17
  out_minute = 30
  in_hour = 9
  in_minute = 0
}

module "Mumbai" {
  source = "./scale-set"
  environment = "production"
  region = "eastasia"
  timezone = "India Standard Time"
  out_hour = 22
  out_minute = 30
  in_hour = 2
  in_minute = 30
}