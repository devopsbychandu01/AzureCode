resource "azurerm_resource_group" "resource_Group" {
  name = var.resourceGroupName
  location = var.location
  tags = var.tags
}