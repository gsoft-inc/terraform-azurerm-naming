module "service_bus_namespace" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = var.separator != null ? var.separator : "-"
  max_length = 50
  nb_instances = var.nb_instances
}

data "null_data_source" "names" {
  count = var.nb_instances
  inputs = {
    result = var.nb_instances > 1 ? regex("^[a-zA-Z]{1}[a-zA-Z0-9-]*$", module.service_bus_namespace.results[count.index]) : regex("^[a-zA-Z]{1}[a-zA-Z0-9-]*$", module.service_bus_namespace.result)
  }
}

locals {
  results = data.null_data_source.names.*.outputs.result
}