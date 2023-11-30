resource "azurerm_resource_group" "mygroup" {
  name = "dev"
  location = "eastus"
}

resource "azurerm_resource_group" "testgroup" {
  name = "test"
  location = "eastus2"
}

resource "azurerm_storage_account" "mystorage" {
 name = "devopsbychandu"
 resource_group_name = "dev"
 location = "eastus"
 account_tier = "Standard"
 account_replication_type = "LRS"
}

resource "azurerm_resource_group" "testingGroup" {
  name = "testing"
  location = "eastus"
}

resource "azurerm_resource_group" "prodGroup" {
  name = "prod"
  location = "eastus"
}