resource "azurerm_lb" "current" {
  name                = "${var.azurerm_lb_name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"

  frontend_ip_configuration {
    name                          = "${var.frontend_ip_configuration}"
    public_ip_address_id          = "${var.public_ip}"
  }
}

resource "azurerm_lb_backend_address_pool" "current" {
  resource_group_name = "${var.resource_group_name}"
  loadbalancer_id     = "${azurerm_lb.current.id}"
  name                = "${var.backendpool_name}"
}