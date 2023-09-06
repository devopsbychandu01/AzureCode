module "resourceGroupModule" {
  source = "../Modules/ResourGroup"
  nameofRG = var.rgname
  location = var.location
}

module "storagAccount" {
  source = "../Modules/storage"
  storageAccountName = var.storagAccountName
  nameofRG = var.rgname
  account_tier = var.account_tier
  location = var.location
  account_replication_type = var.account_replication_type
  depends_on = [ module.resourceGroupModule ]
}

module "nsgmodule" {
  source = "../Modules/NSGModule"
  depends_on = [ module.resourceGroupModule ]
}

module "vnet" {
 source = "../Modules/Vnet"
 depends_on = [ module.resourceGroupModule ]
}