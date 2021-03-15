module "resource_group" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = var.separator != null ? var.separator : "-"
  max_length = 90
}

locals {
  result = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_]*$", module.resource_group.result)
}