terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}



variable "storage_account_names" {
  type    = list(string)
  default = ["devopsbychandustg01", "devopsbychandustg02", "devopsbychandustg03"]
}

resource "azurerm_resource_group" "example" {
  name     = "test"
  location = "eastus"
}

resource "azurerm_storage_account" "my_storage" {
  for_each                 = toset(var.storage_account_names)
  name                     = each.value
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}