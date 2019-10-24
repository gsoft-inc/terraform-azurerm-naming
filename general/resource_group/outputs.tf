output "result" {
  description = "The generated resource group name."
  value       = regex("^[-\\w\\._\\(\\)]+$", module.resource_group.result)
}
