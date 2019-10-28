output "result" {
  description = "The generated API management name."
  value       = regex("^[a-zA-Z0-9-]*$", module.api_management.result)
}