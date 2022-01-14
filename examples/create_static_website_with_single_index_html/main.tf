# This example creates a Storage account for serving a static website.

terraform {
  required_version = ">= 0.13.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.82.0"
    }
  }
}
provider "azurerm" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  features {}
}

resource "azurerm_resource_group" "this" {
  name     = "resource_group_example"
  location = "West Europe"

  tags = {
    terraform = "true"
    padok     = "library"
  }
}

module "storage_account_website" {
  source = "git@github.com:padok-team/terraform-azurerm-storage-account-website.git?ref=v1.0.0"

  name                    = "padokexamplewebsite"
  resource_group_name     = azurerm_resource_group.this.name
  resource_group_location = azurerm_resource_group.this.location

  tags = {
    padok = "example"
  }
}

#Add index.html to blob storage
resource "azurerm_storage_blob" "example" {
  name                   = "index.html"
  storage_account_name   = module.storage_account_website.name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source_content         = "<h1>This is static content coming from the Padok's Terraform Module</h1>"

  depends_on = [
    module.storage_account_website
  ]
}
