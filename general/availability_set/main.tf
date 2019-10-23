module "availability_set" {
  source     = "../../generic"
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  max_length = 80
}
