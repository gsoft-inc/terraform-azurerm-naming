module "data_lake_storage" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = var.separator != null ? var.separator : "0"
  max_length = 24
}

locals {
  result = regex("^[a-z0-9]*$", module.data_lake_storage.result)
}