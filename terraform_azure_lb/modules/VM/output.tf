output "vm_id" {
  value = "${azurerm_virtual_machine.current.id}"
}

output "nic_id" {
  value = "${azurerm_network_interface.current.id}"
}
