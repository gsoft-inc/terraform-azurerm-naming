output "result" {
  description = "The generated event hub name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_.]*$", module.event_hub.result)
}

output "results" {
  description = "The generated event hub names."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_.]*$", module.event_hub.results)
}