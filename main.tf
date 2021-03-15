locals {
  prefix         = join(var.separator, var.prefixes)
  suffix         = var.suffixes == null ? random_string.suffix.result : join(var.separator, var.suffixes)
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

locals {
  result = substr("${local.prefix}${local.separated_name}${local.suffix}", 0, var.max_length)
}
