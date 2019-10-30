output "result" {
  description = "The generated storage account queue name name."
  value       = local.results[0]
}

output "results" {
  description = "The generated storage account queue name names."
  value       = local.results
}