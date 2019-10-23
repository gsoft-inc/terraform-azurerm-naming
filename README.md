# terraform-azurerm-naming
Terraform Module for naming Azure resources and resource groups following [Microsoft's naming guidelines](https://github.com/MicrosoftDocs/architecture-center/blob/master/docs/best-practices/naming-conventions.md).

For the moment, the module(s) source attribute should be [referenced using github](https://www.terraform.io/docs/modules/sources.html#github).  Terraform registry will come soon.


## Example Usage

```hcl
variable "location" {
    default = "eastus2"
}

resource "random_string" "suffix" {
  length  = 13
  upper   = false
  lower   = true
  number  = true
  special = false
  keepers = {
    region = var.location
  }
}

module "resource_group_name" {
  source   = "github.com/gsoft-inc/terraform-azurerm-naming/general/resource_group"
  name     = "example"
  prefixes = ["organization", "project", "production"]
  suffixes = [random_string.suffix.result]
}

module "storage_account_name" {
  source   = "github.com/gsoft-inc/terraform-azurerm-naming/storage/storage_account"
  name     = "example"
  prefixes = ["org", "proj", "prod"]
  suffixes = [random_string.suffix.result]
}

resource "azurerm_resource_group" "example" {
  name     = module.resource_group_name.result
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = module.storage_account_name.result
  resource_group_name      = azurerm_resource_group.example.name
  location                 = var.location
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
```

This results into something like this:
