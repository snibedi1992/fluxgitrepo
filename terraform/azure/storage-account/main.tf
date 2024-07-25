resource "azurerm_resource_group" "example" {
  name     = "rg-fluxterraform"
  location = "eastus"
}

resource "azurerm_storage_account" "example" {
  name                     = "azure_teraform_nibedita2024"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
