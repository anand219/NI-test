resource "azurerm_virtual_network" "current" {
  name                = "${var.Vnet_Name}"
  address_space       = ["${var.Vnet_address}"]
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
}