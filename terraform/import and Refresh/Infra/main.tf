module "resourceGroupModule" {
  source = "../module/ResourceGroup"
  location = var.location
  resourceGroupName = var.resourceGroupName
}
