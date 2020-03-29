output "result" {
  description = "The generated key vault name."
  value       = local.results[0]
}

output "results" {
  description = "The generated key vault names."
  value       = local.results
}