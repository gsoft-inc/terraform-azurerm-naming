output "result" {
  description = "The generated service bus namespace name."
  value       = regex("^[a-zA-Z]{1}[a-zA-Z0-9-]*$", module.service_bus_namespace.result)
}