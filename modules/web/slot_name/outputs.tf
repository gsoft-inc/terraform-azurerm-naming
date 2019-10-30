output "result" {
  description = "The generated slot name name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-]*$", module.slot_name.result)
}

output "results" {
  description = "The generated slot name names."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-]*$", module.slot_name.results)
}