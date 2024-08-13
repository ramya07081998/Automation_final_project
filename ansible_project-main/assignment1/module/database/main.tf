resource "azurerm_postgresql_server" "database_3241" {
  name                = "n01653241-database"
  resource_group_name = var.rg_name-3241
  location            = var.rg_location-3241
  sku_name            = var.sku_name
  version             = var.postgresql_version

  administrator_login          = var.admin_login
  administrator_login_password = var.admin_password
  ssl_enforcement_enabled      = true
  tags                         = var.common_tags
}
