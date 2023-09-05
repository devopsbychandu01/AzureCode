resource "azurerm_resource_group" "myresourceGroup" {
  name = var.RGName
  location = var.location
}

resource "azurerm_storage_account" "storageAccount" {
  name = var.storageAccountName
  location = var.location
  account_replication_type = var.replicationType
  account_tier = var.AccountKind
  resource_group_name = azurerm_resource_group.myresourceGroup.name
}
