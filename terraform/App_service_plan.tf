terraform {
    required_version = ">= 0.12"


    backend "azurerm" {
        storage_account_name = "terrastorageaccount"
        container_name       = "terraform"
        key                  = "terraform.tfstate"
        access_key           = "${var.access_key}"
    }
}

resource "azurerm_resource_group" "rg" {
  name              = "terra-rg"
  location          = "${var.location}"
}

resource "azurerm_virtual_network" "vnet" {
    name                = "${var.virtual_network_name}"
    location            = "${var.location}"
    address_space       = ["${var.address_space}"]
    resource_group_name = "${azure_resource_group.rg.name}"
}

resource "azurerm_subnet" "subnetfrontend" {
  name                  = "${var.subnetname_prefixbackend}"
  virtual_network_name  = "${azurerm_virtual_network.vnet.name}"
  resource_group_name   = "${azurerm_resource_group.rg.name}"
  address_prefix        = "${var.subnet_prefixbackend}"
}

resource "azurerm" "subnetbackend" {
  name                  = "${var.subnetname_prefixbackend}"
  virtual_network_name  = "${azurerm_virtual_network.vnet.name}"
  resource_group_name   = "${azurerm_resource_group.rg.name}"
  address_prefix        = "${var.subnet_prefixbackend}"
}



