# terraform-azurerm-naming
Terraform Module for naming Azure resources and resource groups following [Microsoft's naming guidelines](https://github.com/MicrosoftDocs/architecture-center/blob/master/docs/best-practices/naming-conventions.md).

For the moment, the module(s) source attribute should be [referenced using github](https://www.terraform.io/docs/modules/sources.html#github).  Terraform registry will come soon.

## Why Use This?
1. Abstract the hassle of knowing which resource type needs to follow which naming convention (length, dashes or no dashes, etc.)
2. Make it easier to follow company naming conventions
3. Follow best pratices such as suffixing with a random string to avoid name collisions


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

This example would result into something like this:

- `organization-project-production-example-35xvzaq251lja` (resource group)
  - `org0proj0prod0example035` (storage account)

## License

Copyright © 2019, GSoft inc. This code is licensed under the Apache License, Version 2.0. You may obtain a copy of this license at https://github.com/gsoft-inc/gsoft-license/blob/master/LICENSE.