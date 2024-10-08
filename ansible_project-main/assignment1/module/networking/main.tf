resource "azurerm_virtual_network" "network-3241" {
  name                = var.vnet
  location            = var.rg_location-3241
  resource_group_name = var.rg_name-3241
  address_space       = var.vnet_space
  tags = var.common_tags
}

resource "azurerm_subnet" "subnet-3241" {
  name                 = var.subnet
  resource_group_name  = var.rg_name-3241
  virtual_network_name = azurerm_virtual_network.network-3241.name
  address_prefixes     = var.subnet_space
}

resource "azurerm_network_security_group" "secgroup-3241" {
  name                = var.network_sg
  location            = var.rg_location-3241
  resource_group_name = var.rg_name-3241

  security_rule {
    name                       = "rule1"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "rule2"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "5985"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "rule3"
    priority                   = 300
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "rule4"
    priority                   = 400
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
 
 tags = var.common_tags

}

resource "azurerm_subnet_network_security_group_association" "nsg_aso" {
  subnet_id                 = azurerm_subnet.subnet-3241.id
  network_security_group_id = azurerm_network_security_group.secgroup-3241.id
}
