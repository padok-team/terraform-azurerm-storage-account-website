variable "name" {
  description = "Storage Account Name"
  type        = string
  validation {
    condition     = length(var.name) > 0
    error_message = "Please provide a valid Storage Account Name !"
  }
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "resource_group_location" {
  description = "Resource Group Location"
  type        = string
}

variable "account_replication_type" {
  description = "Storage account replication type - i.e. LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS. https://docs.microsoft.com/azure/storage/common/storage-redundancy"
  type        = string
  default     = "GRS"
  validation {
    condition     = can(regex("^(LRS|GRS|RAGRS|ZRS|GZRS|RAGZRS)$", var.account_replication_type))
    error_message = "The variable replication_type should be either LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS."
  }
}

variable "index_document" {
  description = "Index Document"
  type        = string
  default     = "index.html"
}

variable "tags" {
  description = "A mapping of tags"
  type        = map(string)
  default = {
    "terraform" = "true"
  }
}
