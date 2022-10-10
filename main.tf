terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }
}

provider "azurerm" {
    features{}
    client_id = AZURE_CLIENT_ID
    client_secret = AZURE_CLIENT_SECRET
}

resource "azurerm_resource_group" "myrg" {
  name = "testrg"
  location = "westeurope"
}