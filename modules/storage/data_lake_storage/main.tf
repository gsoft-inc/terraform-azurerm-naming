module "data_lake_storage" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = "0"
  max_length = 24
}