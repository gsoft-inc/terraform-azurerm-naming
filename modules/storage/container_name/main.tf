module "container_name" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = var.separator != null ? var.separator : "-"
  max_length = 63
}

locals {
  result = regex("^[a-z0-9]{1}[a-z0-9-]*$", module.container_name.result)
}