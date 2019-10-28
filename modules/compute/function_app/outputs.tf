output "result" {
  description = "The generated function app name."
  value       = regex("^[a-zA-Z0-9-]*$", module.function_app.result)
}