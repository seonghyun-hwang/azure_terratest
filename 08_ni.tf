resource "azurerm_network_interface" "shyun_ni" {
  name = "shyun_nic"
  location = azurerm_resource_group.shyun_rg.location
  resource_group_name = azurerm_resource_group.shyun_rg.name

  ip_configuration {
    name = "azureconfig"
    subnet_id = azurerm_subnet.shyun_subnet2.id
    private_ip_address_allocation = "Dynamic"
  }
}