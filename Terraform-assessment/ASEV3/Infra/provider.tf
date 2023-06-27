provider "azurerm" {
  features {}
}
terraform {
  backend "azurerm" {
    resource_group_name  = "test"
    storage_account_name = "devusestg009"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}