output "result" {
  description = "The generated traffic manager profile name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9]*$", module.container_registry.result)
}

output "results" {
  description = "The generated traffic manager profile names."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9]*$", module.container_registry.results)
}