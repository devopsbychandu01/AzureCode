
resource "azurerm_resource_group" "rggroupname" {
  name = "${var.prefix}-${var.rgname}"
  location = var.location
  tags = var.tags
}
resource "azurerm_virtual_network" "example" {
  name                = var.vNetName
  location            = var.location
  resource_group_name = azurerm_resource_group.rggroupname.name
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

data "azurerm_resource_group" "name" {
  name = "test"
}