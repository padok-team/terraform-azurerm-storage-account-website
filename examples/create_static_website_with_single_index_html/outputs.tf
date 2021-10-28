output "url" {
  value       = module.storage_account_website.primary_web_endpoint
  description = "URL of the storage account"
}
