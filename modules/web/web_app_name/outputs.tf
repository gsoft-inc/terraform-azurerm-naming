output "result" {
  description = "The generated web app name name."
  value       = regex("^[a-zA-Z0-9-]*$", module.web_app_name.result)
}