module "container_name" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = "-"
  max_length = 63
}