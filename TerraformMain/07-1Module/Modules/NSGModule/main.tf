resource "azurerm_network_security_group" "MyNSG" {
  name = "devnsg"
  resource_group_name = "test"
  location = "eastus"
}