module "table_name" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = var.separator != null ? var.separator : "0"
  max_length = 63
  nb_instances = var.nb_instances
}

data "null_data_source" "names" {
  count = var.nb_instances
  inputs = {
    result = var.nb_instances > 1 ? regex("^[a-zA-Z0-9]*$", module.table_name.results[count.index]) : regex("^[a-zA-Z0-9]*$", module.table_name.result)
  }
}

locals {
  results = data.null_data_source.names.*.outputs.result
}