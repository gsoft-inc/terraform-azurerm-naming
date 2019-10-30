output "result" {
  description = "The generated managed disk name name."
  value       = local.results[0]
}

output "results" {
  description = "The generated managed disk name names."
  value       = local.results
}