output "result" {
  description = "The generated data lake storage name name."
  value       = local.results[0]
}

output "results" {
  description = "The generated data lake storage name names."
  value       = local.results
}