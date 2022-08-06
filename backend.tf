terraform {
  backend "azurerm" {
    resource_group_name  = "AKS"
    storage_account_name = "storageufyhfffffff"
    container_name       = "terraform"
    key                  = "prod.terraform.tfstate"
  }
}

