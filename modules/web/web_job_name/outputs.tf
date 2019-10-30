output "result" {
  description = "The generated web job name name."
  value       = local.results[0]
}

output "results" {
  description = "The generated web job name names."
  value       = local.results
}