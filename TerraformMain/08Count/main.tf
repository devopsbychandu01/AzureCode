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

variable "resourceGroup" {
  type = list(string)
  default = ["prod1", "prod2", "prod3"]
}

variable "location" {
  type = string
  default = "eastus"
}

resource "azurerm_resource_group" "prodgroups" {
  count = length(var.resourceGroup)
  name = var.resourceGroup[count.index]
  location = var.location
}