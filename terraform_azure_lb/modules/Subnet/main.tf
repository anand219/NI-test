resource "azurerm_subnet" "current" {
  name                      = "${var.subnet_name}"
  resource_group_name       = "${var.resource_group_name}"
  virtual_network_name      = "${var.Vnet_Name}"
  address_prefix            = "${var.subnet_prefix}"
}
