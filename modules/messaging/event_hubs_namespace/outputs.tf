output "result" {
  description = "The generated event hubs namespace name."
  value       = regex("^[a-zA-Z]{1}[a-zA-Z0-9-]*$", module.event_hubs_namespace.result)
}

output "results" {
  description = "The generated event hubs namespace names."
  value       = regex("^[a-zA-Z]{1}[a-zA-Z0-9-]*$", module.event_hubs_namespace.results)
}