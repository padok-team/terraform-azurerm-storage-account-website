resource "azurerm_storage_account" "this" {
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = var.account_replication_type


  static_website {
    index_document = var.index_document
  }

  tags = var.tags
}
