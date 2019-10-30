output "result" {
  description = "The generated storage account name."
  value       = local.results[0]
}

output "results" {
  description = "The generated storage account names."
  value       = local.results
}