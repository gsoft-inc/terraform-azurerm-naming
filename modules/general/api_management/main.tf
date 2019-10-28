module "api_management" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  max_length = 50
}
