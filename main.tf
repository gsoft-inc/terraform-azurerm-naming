locals {
  prefix         = "${join(var.separator, var.prefixes)}"
  suffix         = "${join(var.separator, var.suffixes)}"
  separated_name = "${var.separator}${var.name}${var.separator}"
}
