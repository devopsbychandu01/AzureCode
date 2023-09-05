module "resourceGroup" {
  source = "../Modules/ResourGroup"
  nameofRG = var.rgname
  location = var.location
}

module "storageAccount" {
  source = "../Modules/storage"
  nameofRG = "test"
  depends_on = [ module.resourceGroup ]
  location = var.location
  storageAccountName = "devopsbychandu09iy"
  account_replication_type = var.account_replication_type
  account_tier = var.account_tier
}