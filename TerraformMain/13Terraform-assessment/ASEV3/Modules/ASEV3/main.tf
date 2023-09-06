resource "azurerm_app_service_environment_v3" "ASEV3" {
    name = var.ASEName
    resource_group_name = var.resourceGroupName
    subnet_id = var.subnet_id
    internal_load_balancing_mode = var.loadBalancer
    zone_redundant = var.zone_redundant
    tags = var.tags
    cluster_setting {
      name = "clustesetting1"
      value = "clusterValue1"
    }
    cluster_setting {
      name = "clustesetting2"
      value = "clusterValue2"
    }
    cluster_setting {
      name = "clustesetting3"
      value = "clusterValue3"
    }
}