module "storage_account" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = var.separator != null ? var.separator : "0"
  max_length = 24
  nb_instances = var.nb_instances
}

data "null_data_source" "names" {
  count = var.nb_instances
  inputs = {
    result = var.nb_instances > 1 ? regex("^[a-z0-9]*$", module.storage_account.results[count.index]) : regex("^[a-z0-9]*$", module.storage_account.result)
  }
}

locals {
  results = data.null_data_source.names.*.outputs.result
}