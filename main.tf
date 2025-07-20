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
  subscription_id = "4a8882d8-040a-43b9-81c8-844e324752c0"

}

resource "azurerm_resource_group" "rg" {
  name     = "rg-resources3"
  location = "West Europe"
}

resource "azurerm_storage_account" "sa1" {
  name                     = "sctjsa"
  resource_group_name      = "rg-resources3"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

