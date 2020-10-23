module "resource_group" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = var.separator != null ? var.separator : "-"
  max_length = 90
  nb_instances = var.nb_instances
}

data "null_data_source" "names" {
  count = var.nb_instances
  inputs = {
    result = var.nb_instances > 1 ? regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_]*$", module.resource_group.results[count.index]) : regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_]*$", module.resource_group.result)
  }
}

locals {
  results = data.null_data_source.names.*.outputs.result
}