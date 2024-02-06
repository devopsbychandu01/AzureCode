resource "azurerm_storage_account" "name" {
  name = var.storageAccountName
  location = var.location
  resource_group_name = var.nameofRG
  account_tier = var.account_tier
  account_replication_type = var.account_replication_type
}