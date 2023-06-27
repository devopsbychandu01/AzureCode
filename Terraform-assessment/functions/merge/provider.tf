# Configure the Microsoft Azure Provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  
  backend "azurerm" {
    resource_group_name  = "test"
    storage_account_name = "devusestg009"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}