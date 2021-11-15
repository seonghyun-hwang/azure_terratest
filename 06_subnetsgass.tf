resource "azurerm_subnet_network_security_group_association" "shyun_snsgass1" {
  subnet_id = azurerm_subnet.shyun_subnet1.id
  network_security_group_id = azurerm_network_security_group.shyun_vnsg.id
}

resource "azurerm_subnet_network_security_group_association" "shyun_snsgass2" {
  subnet_id = azurerm_subnet.shyun_subnet2.id
  network_security_group_id = azurerm_network_security_group.shyun_vnsg.id
}

# resource "azurerm_subnet_network_security_group_association" "shyun_snsgass" {
#   subnet_id = azurerm_subnet.shyun_subnet3.id
#   network_security_group_id = azurerm_network_security_group.shyun_vnsg
# }