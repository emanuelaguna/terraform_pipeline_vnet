variable "location" {
  default     = "southcentralus"
}

# variable "access_key" {
#   default     = "fHccV8GckC3WSbAS6IdC0J9A+ZqBREoweQ1LksqXMh+JjDVSW6zoDmoq0Rg0bSUflgXabw5WcGXhBcOaK4RsqQ=="
# }



variable "virtual_network_name" {
  description = "The name for de virtual network."
  default     = "FLOAPP-vNET_Terra"
}

variable "address_space" {
  description = "The address space that is used by the virtual network. You van supply more than one address space. Changing this forces a new resource to be created."
  default     = "10.0.0.0/16"
}

variable "subnetname_prefixfrontend" {
  description = "The shortened abbreviation to represent your resource group that will go on the front of some resources." 
  default     = "Frontend"
}

variable "subnet_prefixfrontend" {
  description = "The address prefix to use for the subnet."
  default     = "10.0.10.0/24"
}

variable "subnet_prefixbackend" {
  description = "The address prefix to use for the subnet."
  default     = "10.0.20.0/24"
}




