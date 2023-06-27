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
  name = format("%s_%s", "rg",local.environment_prefix)  #prefix=learning rgname=dev --> concat value is "learning_dev"
  location = var.location
  tags = merge({Application = "DemoApp"}, var.tags)
}

/*
comment 1
comment2
*/

resource "azurerm_storage_account" "storageAccount" {
  name                     = "devin99ko08ju"
  resource_group_name      = azurerm_resource_group.rggroupname.name
  location                 = azurerm_resource_group.rggroupname.location
  account_tier             = lookup(local.storage_properties,var.account_tier,"Standard")
  account_replication_type = lookup(local.storage_properties,var.account_replication_type,"LRS")
  tags = var.tags
}