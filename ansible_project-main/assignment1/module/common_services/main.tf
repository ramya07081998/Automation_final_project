resource "azurerm_log_analytics_workspace" "common-3241" {
  name                = var.log_name
  resource_group_name = var.rg_name-3241
  sku                 = var.log_sku
  location            = var.rg_location-3241
  retention_in_days   = var.log_retention

  depends_on = [
    var.rg_name-3241,
  ]
  tags = var.common_tags
}

resource "azurerm_recovery_services_vault" "recovery_vault-3241" {
  name                = var.vault_name
  location            = var.rg_location-3241
  sku                 = var.vault_sku
  resource_group_name = var.rg_name-3241
  depends_on = [
    var.rg_name-3241,
  ]
  tags = var.common_tags
}

resource "azurerm_storage_account" "standard_storage-3241" {
  name                     = var.storage_account_name
  resource_group_name      = var.rg_name-3241
  location                 = var.rg_location-3241
  account_tier             = var.acc-tier
  account_replication_type = var.rep-type
  tags                     = var.common_tags
}
