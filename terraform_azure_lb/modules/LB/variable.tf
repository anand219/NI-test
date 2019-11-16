variable "azurerm_lb_name" {
    description = "Azure LB name will be provided"  
}

variable "location" {
  description = "Location of the resource will be proivided"
}

variable "resource_group_name" {
  description = "Resource group name will be provided"
}

variable "frontend_ip_configuration" {
   description = "Name of front end configuration will be given"
}

variable "public_ip" {
    description = "Public IP address ID will be provided"
}

variable "backendpool_name" {
  description = "Backend pool address will be provided"
}
