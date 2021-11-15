resource "azurerm_virtual_network" "shyun_vn" {
  name = "shyun-vnet"
  resource_group_name = azurerm_resource_group.shyun_rg.name
  location = azurerm_resource_group.shyun_rg.location
  address_space = ["10.0.0.0/16"]
}