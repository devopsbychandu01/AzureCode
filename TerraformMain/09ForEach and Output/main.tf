variable "storage_account_names" {
  type    = list(string)
  default = ["devopsbychandustg01", "devopsbychandustg02", "devopsbychandustg03"]
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

output "storage_account_names" {
  value = [
    for storage in var.storage_account_names:
    azurerm_storage_account.my_storage.example[storage].id
  ]
}