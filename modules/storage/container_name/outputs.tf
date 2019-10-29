output "result" {
  description = "The generated storage account container name name."
  value       = regex("^[a-z0-9-]*$", module.container_name.result)
}