resource "azurerm_availability_set" "current" {
  name                        = "${var.av_set_name}"
  location                    = "${var.location}"
  managed                     = true
  resource_group_name         = "${var.resource_group_name}"
  platform_fault_domain_count = "2"
}