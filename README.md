# terraform-azurerm-naming
Terraform Module for naming Azure resources and resource groups following [Microsoft's naming guidelines](https://docs.microsoft.com/en-us/azure/architecture/best-practices/resource-naming).

_Note: Since this module is comprised of multiple sub-modules, you need to [reference them in a particular fashion](https://www.terraform.io/docs/modules/sources.html#modules-in-package-sub-directories)._

## Why Use This?
1. Abstract the hassle of knowing which resource type needs to follow which naming convention (length, dashes or no dashes, etc.)
2. Make it easier to follow naming conventions
3. Follow best pratices such as suffixing with a random string to avoid name collisions


## Example Usage
```hcl
provider "azurerm" {
  version = "=2.1.0"
}

variable "location" {
    default = "eastus2"
}

module "resource_group_name" {
  source   = "gsoft-inc/naming/azurerm//modules/general/resource_group"
  name     = "example"
  prefixes = ["organization", "project", "production"]
}

module "storage_account_name" {
  source   = "gsoft-inc/naming/azurerm//modules/storage/storage_account"
  name     = "example"
  prefixes = ["org", "proj", "prod"]
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
  - `org0proj0prod0example01x` (storage account)

*Note: Random suffix is automatically generated but can but overriden.*
  
## Updating the module
```hcl
terraform get -update
```

## License

Copyright © 2020, GSoft inc. This code is licensed under the Apache License, Version 2.0. You may obtain a copy of this license at https://github.com/gsoft-inc/gsoft-license/blob/master/LICENSE.
