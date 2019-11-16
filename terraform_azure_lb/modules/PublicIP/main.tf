resource "azurerm_public_ip" "current" {
  name                = "${var.pip_name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  allocation_method   = "Static"
}