output "this" {
  description = "Storage Account"
  value       = azurerm_storage_account.this
}

output "id" {
  description = "Storage Account ID"
  value       = azurerm_storage_account.this.id
}

output "name" {
  description = "Storage Account Name"
  value       = azurerm_storage_account.this.name
}

output "primary_location" {
  description = "Storage Account Primary Location"
  value       = azurerm_storage_account.this.primary_location
}

output "primary_web_endpoint" {
  description = "Storage Account Primary Web Endpoint"
  value       = azurerm_storage_account.this.primary_web_endpoint
}

output "primary_web_host" {
  description = "Storage Account Primary Web Host"
  value       = azurerm_storage_account.this.primary_web_host
}

output "primary_access_key" {
  description = "Storage Account Primary Access Key"
  value       = azurerm_storage_account.this.primary_access_key
}

output "primary_connection_string" {
  description = "Storage Account Primary Connection String"
  value       = azurerm_storage_account.this.primary_connection_string
}

output "identity" {
  description = "Storage Account Identity"
  value       = azurerm_storage_account.this.identity
}
