module "container_name" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = "-"
  max_length = 63
  nb_instances = var.nb_instances
}

data "null_data_source" "names" {
  count = var.nb_instances
  inputs = {
    result = var.nb_instances > 1 ? regex("^[a-z0-9]{1}[a-z0-9-]*$", module.container_name.results[count.index]) : regex("^[a-z0-9]{1}[a-z0-9-]*$", module.container_name.result)
  }
}

locals {
  results = data.null_data_source.names.*.outputs.result
}