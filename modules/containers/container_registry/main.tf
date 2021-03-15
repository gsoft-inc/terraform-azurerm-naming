module "container_registry" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = var.separator != null ? var.separator : "0"
  max_length = 50
}

locals {
  result = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9]*$", module.container_registry.result)
}