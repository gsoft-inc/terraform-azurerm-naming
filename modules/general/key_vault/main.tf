module "key_vault" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = var.separator != null ? var.separator : "-"
  max_length = 24
}

locals {
  result = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-]*$", module.key_vault.result)
}