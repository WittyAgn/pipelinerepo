terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "16a05a8e-7ba4-486d-8521-57e717aedbbd"

}

resource "azurerm_resource_group" "rg" {
  name     = "rg-resources3"
  location = "West Europe"
}

resource "azurerm_storage_account" "sar" {
  name                     = "stoage2"
  resource_group_name      = "rg-resources3"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on = [ azurerm_storage_account.sar ]
}

