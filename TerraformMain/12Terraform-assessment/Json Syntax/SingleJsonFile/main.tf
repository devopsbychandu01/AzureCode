
resource "azurerm_resource_group" "rggroupname" {
  name = format("%s_%s", var.prefix, var.rgname)  #prefix=learning rgname=dev --> concat value is "learning_dev"
  location = var.location
  tags = merge({Application = "DemoApp"}, var.tags)
}

data "azurerm_resource_group" "name" {
  name = "test"
}

/*
comment 1
comment2
*/

resource "azurerm_storage_account" "storageAccount" {
  name                     = "devin99ko08ju"
  resource_group_name      = azurerm_resource_group.rggroupname.name
  location                 = azurerm_resource_group.rggroupname.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = var.tags
}