provider "azurerm" {
  features {}

  subscription_id = "7570f573-0987-4280-83eb-aaaf101738a4"
  client_id       = "7fa8bf95-1996-4fbc-a63d-7c8058b0b569"
  client_secret   = "Shz8Q~e-p_gvz2OJVhhu7ngaikwOg9qvAwuLUaL-"
  tenant_id       = "9e2aa9e5-8b72-430b-b9f2-14e22baee0e2"
}

#dev env
module "Dev" {
  source = "github.com/venkykukatla/terraformn"
azurerm_resource_group-name = "Dev-rg"
location = "east us"
azurerm_virtual_network-name = "Dev-vnet"
address_space = ["10.0.0.0/16"]
azurerm_subnet01 = "subnet01"
address_prefixes01 =  ["10.0.0.0/24"]
azurerm_subnet02 = "subnet02"
address_prefixes02 = ["10.0.1.0/24"]
azurerm_subnet03 = "subnet03"
address_prefixes03 = ["10.0.2.0/24"]
azurerm_network_security_group-nsg = "Dev-nsg"
name                       = "Devrules"
priority                   = 100
direction                  = "Inbound"
access                     = "Allow"
protocol                   = "Tcp"
source_port_range          = "*"
destination_port_range     = "*"
source_address_prefix      = "*"
destination_address_prefix = "*"
}
#QA env
module "Qa" {
  source = "github.com/venkykukatla/terraformn"
azurerm_resource_group-name = "Qa-rg"
location = "east us"
azurerm_virtual_network-name = "Qa-vnet"
address_space = ["10.0.0.0/16"]
azurerm_subnet01 = "subnet01"
address_prefixes01 =  ["10.0.0.0/24"]
azurerm_subnet02 = "subnet02"
address_prefixes02 = ["10.0.1.0/24"]
azurerm_subnet03 = "subnet03"
address_prefixes03 = ["10.0.2.0/24"]
azurerm_network_security_group-nsg = "Qa-nsg"
name                       = "Qarules"
priority                   = 100
direction                  = "Inbound"
access                     = "Allow"
protocol                   = "Tcp"
source_port_range          = "*"
destination_port_range     = "*"
source_address_prefix      = "*"
destination_address_prefix = "*"
  
}

#uat env

module "uat" {
  source = "github.com/venkykukatla/terraformn"
azurerm_resource_group-name = "uat-rg"
location = "east us"
azurerm_virtual_network-name = "Uat-vnet"
address_space = ["10.0.0.0/16"]
azurerm_subnet01 = "subnet01"
address_prefixes01 =  ["10.0.0.0/24"]
azurerm_subnet02 = "subnet02"
address_prefixes02 = ["10.0.1.0/24"]
azurerm_subnet03 = "subnet03"
address_prefixes03 = ["10.0.2.0/24"]
azurerm_network_security_group-nsg = "Uat-nsg"
name                       = "Uatrules"
priority                   = 100
direction                  = "Inbound"
access                     = "Allow"
protocol                   = "Tcp"
source_port_range          = "*"
destination_port_range     = "*"
source_address_prefix      = "*"
destination_address_prefix = "*"  
  
}

#prod env
module "prod" {
  source = "github.com/venkykukatla/terraformn"
azurerm_resource_group-name = "prod-rg"
location = "east us"
azurerm_virtual_network-name = "prod-vnet"
address_space = ["10.0.0.0/16"]
azurerm_subnet01 = "subnet01"
address_prefixes01 =  ["10.0.0.0/24"]
azurerm_subnet02 = "subnet02"
address_prefixes02 = ["10.0.1.0/24"]
azurerm_subnet03 = "subnet03"
address_prefixes03 = ["10.0.2.0/24"]
azurerm_network_security_group-nsg = "prod-nsg"
name                       = "prodrules"
priority                   = 100
direction                  = "Inbound"
access                     = "Allow"
protocol                   = "Tcp"
source_port_range          = "*"
destination_port_range     = "*"
source_address_prefix      = "*"
destination_address_prefix = "*"
  
}