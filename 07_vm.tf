resource "azurerm_virtual_machine" "shyun_vm" {
  name = "shyun_vm"
  location = azurerm_resource_group.shyun_rg.location
  resource_group_name = azurerm_resource_group.shyun_rg.name
  network_interface_ids = [azurerm_network_interface.shyun_ni.id]
  vm_size = "Standard_DS1_v2"

  storage_image_reference {
    publisher = "OpenLogic"
    offer = "CentOS"
    sku = "7.5"
    version = "latest"
  }

  storage_os_disk {
    name = "shyun_disk"
    caching = "ReadWrite"
    create_option = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name = "centos7"
    admin_username = "shyun"
    admin_password = "Bespinbespin1!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}