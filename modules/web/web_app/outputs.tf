output "result" {
  description = "The generated web app name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-]*$", module.web_app.result)
}

output "results" {
  description = "The generated web app names."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-]*$", module.web_app.results)
}