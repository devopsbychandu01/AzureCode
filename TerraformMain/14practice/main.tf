resource "azurerm_resource_group" "ResourGroup" {
  name = var.ResourceGroupName
  location = var.location
  tags = var.tags
}

resource "azurerm_resource_group" "TestGroup" {
  name = "test"
  location = "eastus"
}

resource "azurerm_resource_group" "myresourceGroup" {
  name = "uat"
  location = "eastus"
  tags = {
    "project" = "cloudComputing"
  }
}

module "storageModulee" {
  source = "github.com/devopsbychandu01/terraformModule.git"
  RGName = "prod"
}