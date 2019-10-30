output "result" {
  description = "The generated slot name name."
  value       = local.results[0]
}

output "results" {
  description = "The generated slot name names."
  value       = local.results
}