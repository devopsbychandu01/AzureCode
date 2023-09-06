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

module "storageAccount" {
  source = "git@github.com:devopsbychandu01/terraformstorageModule.git"
  storageAccountName = "devopsbychandu01"
  nameofRG = "dev"
  account_tier = "Standard"
  location = "eastus"
  account_replication_type = "LRS"
}