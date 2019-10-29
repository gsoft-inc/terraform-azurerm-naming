output "result" {
  description = "The generated web app name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-]*$", module.web_app.result)
}