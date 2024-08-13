resource "azurerm_public_ip" "lb_public_ip" {
  name                = var.pubip_name
  location            = var.rg_location-3241
  resource_group_name = var.rg_name-3241
  allocation_method   = var.alloc_method
  sku                 = var.pub_sku
  tags                = var.common_tags
}

resource "azurerm_lb" "ramya-lb" {
  name                = var.lb_name
  location            = var.rg_location-3241
  resource_group_name = var.rg_name-3241
  sku                 = var.lb_sku

  frontend_ip_configuration {
    name                 = var.lb-configip
    public_ip_address_id = azurerm_public_ip.lb_public_ip.id
  }
  tags = var.common_tags
}

resource "azurerm_lb_backend_address_pool" "lb_pool" {
  name            = var.lb_poolname
  loadbalancer_id = azurerm_lb.ramya-lb.id
}

resource "azurerm_network_interface_backend_address_pool_association" "lb_pool_association" {
  count                   = length(var.linuxvm_ids)
  network_interface_id    = var.linuxvm_ids[count.index]
  ip_configuration_name   = "${substr(var.linux_vm_name[0], 0, length(var.linux_vm_name[0]) - 2)}-ipconfig-${count.index + 1}"
  backend_address_pool_id = azurerm_lb_backend_address_pool.lb_pool.id
}
