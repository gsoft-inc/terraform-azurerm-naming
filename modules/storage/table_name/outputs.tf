output "result" {
  description = "The generated storage account table name name."
  value       = local.results[0]
}

output "results" {
  description = "The generated storage account table name names."
  value       = local.results
}