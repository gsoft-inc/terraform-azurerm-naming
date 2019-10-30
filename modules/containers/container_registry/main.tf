module "container_registry" {
  source     = "../../../."
  name       = var.name
  prefixes   = var.prefixes
  suffixes   = var.suffixes
  separator  = "0"
  max_length = 50
  nb_instances = var.nb_instances
}