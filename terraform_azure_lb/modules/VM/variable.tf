variable "resource_group_name" {
  description = "Resource group name will be provided"
}

variable "virtual_machine_name" {
  description = "Virutal machine name will be provided"
}

variable "location" {
  description = "Resource will be created under this location"
}

variable "subnet_id" {
  description = "Subnet ID will be provided"
}

variable "private_ip_address" {
  description = "Private Address of the virtual machine will be provided"
}

variable "vm_size" {
  description = "The Size of Virtual name Disk will be provided"
}

variable "admin_username" {
  description = "Admin user name of the virtual machine will be provided "
}

variable "admin_password" {
  description = "Admin password will be given here"
}
