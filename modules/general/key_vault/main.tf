module "key_vault" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  max_length = 24
}
