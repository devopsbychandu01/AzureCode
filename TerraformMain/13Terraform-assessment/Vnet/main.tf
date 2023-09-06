# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "name" {
  name = var.rgname
  location = var.location
  tags = var.tags
}
resource "azurerm_virtual_network" "example" {
  name                = var.vNetName
  location            = var.location
  resource_group_name = var.rgname
  address_space = [ "10.0.0.0/16" ]
  subnet {
    name           = var.subnet1Name
    address_prefix = var.subnet1Address
  }
  subnet {
    name           = var.subnet2Name
    address_prefix = var.subnet2Address
  }
  tags = var.tags
}