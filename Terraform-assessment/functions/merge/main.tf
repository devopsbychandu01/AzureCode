
resource "azurerm_resource_group" "rggroupname" {
  name = format("%s_%s", var.prefix, var.rgname)  #prefix=learning rgname=dev --> concat value is "learning_dev"
  location = var.location
  tags = merge({Application = "DemoApp"}, var.tags)
}

data "azurerm_resource_group" "name" {
  name = "test"
}