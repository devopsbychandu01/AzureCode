resource "azurerm_virtual_network" "vnet" {
  name                = "devvent"
  location            = "eastus"
  resource_group_name = "test"
  address_space = [ "10.0.0.0/16" ]
  subnet {
    name           = "firstsubnet"
    address_prefix = "10.0.0.0/24"
  }
  subnet {
    name           = "secondsubnet"
    address_prefix = "10.0.1.0/24"
  }
}