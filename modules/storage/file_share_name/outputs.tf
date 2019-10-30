output "result" {
  description = "The generated storage account file share name name."
  value       = local.results[0]
}

output "results" {
  description = "The generated storage account file share name names."
  value       = local.results
}