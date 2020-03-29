output "result" {
  description = "The generated resource group name."
  value       = local.results[0]
}

output "results" {
  description = "The generated resource group names."
  value       = local.results
}