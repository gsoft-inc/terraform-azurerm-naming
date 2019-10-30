output "result" {
  description = "The generated storage account container name name."
  value       = regex("^[a-z0-9]{1}[a-z0-9-]*$", module.container_name.result)
}

output "results" {
  description = "The generated storage account container name names."
  value       = regex("^[a-z0-9]{1}[a-z0-9-]*$", module.container_name.results)
}