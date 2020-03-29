module "key_vault" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = "-"
  max_length = 24
  nb_instances = var.nb_instances
}

data "null_data_source" "names" {
  count = var.nb_instances
  inputs = {
    result = var.nb_instances > 1 ? regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-]*$", module.key_vault.results[count.index]) : regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-]*$", module.key_vault.result)
  }
}

locals {
  results = data.null_data_source.names.*.outputs.result
}