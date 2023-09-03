variable "storage_account_names" {
  type    = list(string)
  default = ["jackuksstr001", "jackuksstr002", "jackuksstr003"]
}

resource "azurerm_resource_group" "example" {
  name     = "storage-rg"
  location = "UK South"
}

resource "azurerm_storage_account" "my_storage" {
  for_each                 = toset(var.storage_account_names)
  name                     = each.value
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}