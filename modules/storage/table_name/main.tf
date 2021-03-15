module "table_name" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = var.separator != null ? var.separator : "0"
  max_length = 63
}

locals {
  result = regex("^[a-zA-Z0-9]*$", module.table_name.result)
}