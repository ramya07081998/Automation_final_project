resource "azurerm_resource_group" "rgroup-3241" {
  name     = var.rg_name
  location = var.rg_location
  tags = var.common_tags
}
