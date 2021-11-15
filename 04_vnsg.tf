resource "azurerm_network_security_group" "shyun_vnsg" {
  name = "shyun_vn_sg"
  location = azurerm_resource_group.shyun_rg.location
  resource_group_name = azurerm_resource_group.shyun_rg.name

  security_rule {
    name = "vnet_sg"
    priority = 100
    direction = "Inbound"
    access = "Allow"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = "80"
    source_address_prefix = "*"
    destination_address_prefix = "*"
  }

  tags = {
    "environment" = "Production"
  }
}