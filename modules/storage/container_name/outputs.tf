output "result" {
  description = "The generated storage account container name name."
  value       = local.results[0]
}

output "results" {
  description = "The generated storage account container name names."
  value       = local.results
}