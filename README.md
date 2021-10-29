# AZURE Storage Account Website Terraform module

Terraform module which creates **Storage Account for website** resources on **AZURE**.

## User Stories for this module

- AAOps, I want to create a storage account for website.

## Usage

```hcl
module "storage_account_website" {
  source = "git@github.com:padok-team/terraform-azurerm-storage-account-website.git?ref=v0.0.1"

  name                    = "my-website-name"
  resource_group_name     = "my-resource-group-name"
  resource_group_location = "West Europe"

  tags = {
    padok = "example"
  }
}
```

## Examples

- [Create a static website with an index.html](examples/create_static_website_with_single_index_html)

<!-- BEGIN_TF_DOCS -->
## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Storage Account Name | `string` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Resource Group Location | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource Group Name | `string` | n/a | yes |
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | Storage account replication type - i.e. LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS. https://docs.microsoft.com/azure/storage/common/storage-redundancy | `string` | `"GRS"` | no |
| <a name="input_index_document"></a> [index\_document](#input\_index\_document) | Index Document | `string` | `"index.html"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags | `map(string)` | <pre>{<br>  "terraform": "true"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Storage Account ID |
| <a name="output_identity"></a> [identity](#output\_identity) | Storage Account Identity |
| <a name="output_name"></a> [name](#output\_name) | Storage Account Name |
| <a name="output_primary_access_key"></a> [primary\_access\_key](#output\_primary\_access\_key) | Storage Account Primary Access Key |
| <a name="output_primary_connection_string"></a> [primary\_connection\_string](#output\_primary\_connection\_string) | Storage Account Primary Connection String |
| <a name="output_primary_location"></a> [primary\_location](#output\_primary\_location) | Storage Account Primary Location |
| <a name="output_primary_web_endpoint"></a> [primary\_web\_endpoint](#output\_primary\_web\_endpoint) | Storage Account Primary Web Endpoint |
| <a name="output_primary_web_host"></a> [primary\_web\_host](#output\_primary\_web\_host) | Storage Account Primary Web Host |
| <a name="output_this"></a> [this](#output\_this) | Storage Account |
<!-- END_TF_DOCS -->
