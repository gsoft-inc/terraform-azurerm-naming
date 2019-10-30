output "result" {
  description = "The generated traffic manager profile name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-.]*$", module.traffic_manager_profile.result)
}

output "results" {
  description = "The generated traffic manager profile names."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-.]*$", module.traffic_manager_profile.results)
}