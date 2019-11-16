output "pip_id" {
  value = "${azurerm_public_ip.current.id}"
}

output "pip_address" {
  value = "${azurerm_public_ip.current.ip_address}"
}
