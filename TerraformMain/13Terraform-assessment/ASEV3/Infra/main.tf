locals {
  prefix = format("%s%s%s", "RG",var.ProjectName,var.Environment)
  location = {
    westus = "usw"
    centralus = "usc"
    southindia = "si"
    centralindia = "ci"
    eastus = "use"
  }
}

module "resourceGroup" {
  source = "../Modules/ResourceGroup"
  resourceGroupName = local.prefix
  location = var.location
  tags = var.tags
}

module "VnetSubnet" {
  source = "../Modules/VnetSubnet/"
  depends_on = [
    module.resourceGroup
  ]
  resourceGroupName = local.prefix
  VnetName = var.VnetName
  location = var.location
  tags = var.tags
  VnetCIDR = var.VnetCIDR
  SubneNetName = var.SubneNetName
  SubnetCIDR = var.SubnetCIDR
}

data "azurerm_subnet" "VnetInfo" {
  depends_on = [
    module.VnetSubnet
  ]
  name = var.SubneNetName
  virtual_network_name = var.VnetName
  resource_group_name = local.prefix
}

module "ASEv3" {
 source = "../Modules/ASEV3"
 depends_on = [
   module.VnetSubnet,
   module.resourceGroup
 ]
 ASEName = var.ASEName
 loadBalancer = var.loadBalancer
 tags = var.tags
 location = var.location
 resourceGroupName = local.prefix
 subnet_id = data.azurerm_subnet.VnetInfo.id
 zone_redundant = var.zone_redundant
 clustesetting1 = var.clustesetting1
 clusterValue1 = var.clusterValue1
 clustesetting2 = var.clustesetting2
 clusterValue2 = var.clusterValue2
 clustesetting3 = var.clustesetting3
 clusterValue3 = var.clusterValue3
}