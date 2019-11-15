module "resource_group" {
  source              = "../modules/RG"
  rg_name             = "${var.resource_group_name}"
  location            = "${var.location}"
}

module "Vnet" {
  source               = "../modules/Vnet"
  Vnet_Name            = "${var.vnet_name}"
  Vnet_address         = "${var.vnet_address}"
  location             = "${var.location}"
  resource_group_name  = "${var.resource_group_name}"
}

module "subnet" {
  source               = "../modules/Subnet"
  subnet_name          = "${var.subnet_name}"
  resource_group_name  = "${var.resource_group_name}"
  virtual_network_name = "${var.vnet_name}"
  subnet_prefix        = "${var.subnet_address}"
}

module "VM_1" {
  source               = "../modules/VM"
  virtual_machine_name = "${var.vm-1_name}"
  location             = "${var.location}"
  resource_group_name  = "${var.resource_group_name}"
  vm_size              = "${var.vm_size}"
  subnet_id            = "${module.subnet.subnet_id}"
  private_ip_address   = "${var.vm-1_private_address}"
  admin_username       = "${var.admin_username}"
  admin_password       = "${var.admin_password}"
}

module "VM_2" {
  source               = "../modules/VM"
  virtual_machine_name = "${var.vm-2_name}"
  location             = "${var.location}"
  resource_group_name  = "${var.resource_group_name}"
  vm_size              = "${var.vm_size}"
  subnet_id            = "${module.subnet.subnet_id}"
  private_ip_address   = "${var.vm-2_private_address}"
  admin_username       = "${var.admin_username}"
  admin_password       = "${var.admin_password}"
}