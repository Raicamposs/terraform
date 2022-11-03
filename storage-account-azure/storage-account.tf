resource "azurerm_resource_group" "first_resource_group" {
  name     = "2695cc2_resource_group"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "first_storage_account" {
  name                     = "2695cc2edf0b40e9be09f"
  resource_group_name      = azurerm_resource_group.first_resource_group.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.common_tags
}

resource "azurerm_storage_container" "first_storage_container" {
  name                 = "2695cc2storagecontainer"
  storage_account_name = azurerm_storage_account.first_storage_account.name
}
