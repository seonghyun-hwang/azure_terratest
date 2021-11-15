resource "azurerm_subnet" "shyun_subnet1" {
  name = "shyun_subnet1"
  resource_group_name = azurerm_resource_group.shyun_rg.name
  virtual_network_name = azurerm_virtual_network.shyun_vn.name
  address_prefixes = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "shyun_subnet2" {
  name = "shyun_subnet2"
  resource_group_name = azurerm_resource_group.shyun_rg.name
  virtual_network_name = azurerm_virtual_network.shyun_vn.name
  address_prefixes = ["10.0.2.0/24"]
}

resource "azurerm_subnet" "shyun_subnet3" {
  name = "shyun_subnet3"
  resource_group_name = azurerm_resource_group.shyun_rg.name
  virtual_network_name = azurerm_virtual_network.shyun_vn.name
  address_prefixes = ["10.0.3.0/24"]
}