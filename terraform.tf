# Define the Azure provider
provider "azurerm" {
    features {}
}

# Create a resource group
resource "azurerm_resource_group" "example" {
    name     = "example-resource-group"
    location = "West US"
}

# Create a storage account
resource "azurerm_storage_account" "example" {
    name                     = "examplestorage"
    resource_group_name      = azurerm_resource_group.example.name
    location                 = azurerm_resource_group.example.location
    account_tier             = "Standard"
    account_replication_type = "LRS"

    tags = {
        environment = "dev"
    }
}c