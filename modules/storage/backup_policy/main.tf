module "backup_policy" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = var.separator != null ? var.separator : "-"
  max_length = 130
}

locals {
  result = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-][^-]*$", module.backup_policy.result)
}