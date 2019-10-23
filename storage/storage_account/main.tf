module "storage_account" {
  source     = "../../generic"
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = "0"
  max_length = 24
}
