
provider "azurerm" {
  features {}
}


module "RGModule" {
  source = "git@github.com:devopsbychandu01/testing.git"
  RGname = "dev"
  location = "eastus"
}