resource "azurerm_resource_group" "main" {
  name     = "resource-group"
  region   = var.region
  tags     = {
    Name   = var.environment
  }
}

resource "azurerm_virtual_network" "main" {
  name                = "${var.region}-vnet"
  address_space       = ["10.0.0.0/16"]
  region              = azurerm_resource_group.main.region
  resource_group_name = azurerm_resource_group.main.name
}