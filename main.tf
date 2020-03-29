locals {
  prefix         = join(var.separator, var.prefixes)
  suffix         = length(var.suffixes) == 0 ? random_string.suffix.result : join(var.separator, var.suffixes)
  separated_name = "${var.separator}${var.name}${var.separator}"
}

resource "random_string" "suffix" {
  length  = 13
  upper   = false
  lower   = true
  number  = true
  special = false
  keepers = {
    name = var.name
  }
}

data "null_data_source" "names" {
  count = var.nb_instances
  inputs = {
    result = var.nb_instances > 1 ? substr("${local.prefix}${local.separated_name}${count.index}${var.separator}${local.suffix}", 0, var.max_length) : substr("${local.prefix}${var.separator}${var.name}${var.separator}${local.suffix}", 0, var.max_length)
  }
}

locals {
  results = data.null_data_source.names.*.outputs.result
}
