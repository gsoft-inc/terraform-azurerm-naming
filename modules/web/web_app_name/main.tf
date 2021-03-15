module "web_app_name" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = var.separator != null ? var.separator : "-"
  max_length = 24
}

locals {
  result = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-]*$", module.web_app_name.result)
}