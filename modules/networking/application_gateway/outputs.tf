output "result" {
  description = "The generated application gateway name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_.]*$", module.application_gateway.result)
}

output "results" {
  description = "The generated application gateway names."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_.]*$", module.application_gateway.results)
}