# This example creates a Storage account

provider "azurerm" {
  features {}
}

provider "random" {

}

resource "random_string" "random" {
  length  = 5
  special = false
  number  = true
  upper   = false
}

module "rg_example" {
  source = "git@github.com:padok-team/terraform-azurerm-resource-group.git?ref=v0.0.2"


  name     = "storage_account_example_${random_string.random.result}"
  location = "West Europe"

  tags = {
    terraform = "true"
    padok     = "library"
  }
}

module "storage_account_website" {
  source = "git@github.com:padok-team/terraform-azurerm-storage-account-website.git?ref=v0.0.1"

  name                    = "padokexamplewebsite${random_string.random.result}"
  resource_group_name     = module.rg_example.this.name
  resource_group_location = module.rg_example.this.location

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
