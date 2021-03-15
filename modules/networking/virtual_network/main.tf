module "virtual_network" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = var.separator != null ? var.separator : "-"
  max_length = 64
}

locals {
  result = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_.]*$", module.virtual_network.result)
}