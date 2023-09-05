locals {
  environment_prefix = format("%s-%s-%s-%s-%s", var.projectName,lookup(local.location,var.location,"no"),var.companyName,var.prefix,var.environmentName)
  location = {
    eastus = "use"
    westus = "usw"
    centralus = "usc"
  }
  storage_properties = {
    account_tier = "Standard"
    account_replication_type = "LRS"
  }
}

resource "azurerm_resource_group" "rggroupname" {
  name = format("%s-%s", "rg1",local.environment_prefix)
  location = var.location
}

module "storageAccount" {
  source = "../Modules/storage"
  nameofRG = azurerm_resource_group.rggroupname.name
  location = var.location
  storageAccountName = "demo89ii67gtbj"
  account_replication_type = var.account_replication_type
  account_tier = var.account_tier
}