variable "resource_group_name" {
  description = "Resource group name will be provided"
}

variable "location" {
  description = "Location of resource group and resource will be created"
}

variable "vnet_name" {
  description = "Name of the Virtual name will be provided"
}

variable "vnet_address" {
  description = "Address space of Vnet will be given"
}

variable "subnet_name" {
  description = "Subnet details will be provided"
}

variable "subnet_address" {
  description = "Address space of Subnet will be provided"
}

variable "vm-1_name" {
  description = "Vm 1 name will be provided"
}

variable "vm-2_name" {
  description = "Vm 2 name will be provided"
}

variable "vm_size" {
  description = "Size of the VM will be given"
}

variable "vm-1_private_address" {
  description = "Vm 1 private address will be given"
}

variable "vm-2_private_address" {
  description = "Vm 2 private address will be provided"
}

variable "admin_username" {
  description = "Admin user name will be given"
}

variable "admin_password" {
  description = "Admin password will be given"
}
