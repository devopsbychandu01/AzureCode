terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
  resource_group_name  = "dev"
  storage_account_name = "devopsbychandu"
  container_name       = "demo"
  key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
