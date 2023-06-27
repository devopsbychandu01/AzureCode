resource "azurerm_virtual_network" "vnet" {
  name                = var.VnetName
  location            = var.location
  resource_group_name = var.resourceGroupName
  address_space       = var.VnetCIDR
  tags                = var.tags
}

resource "azurerm_subnet" "subnet" {
  name                 = var.SubneNetName
  resource_group_name  = var.resourceGroupName
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.SubnetCIDR

  delegation {
    name = "Microsoft.Web.hostingEnvironments"
    service_delegation {
      name    = "Microsoft.Web/hostingEnvironments"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  }
}
