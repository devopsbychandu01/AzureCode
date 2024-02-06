terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
  backend "azurerm" {
  resource_group_name  = "terraformStateRG"
  storage_account_name = "devopsbychandustg01"
  container_name       = "demo"
  key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a7ee7b4a-8947-41aa-b828-6cc170624574"
}
