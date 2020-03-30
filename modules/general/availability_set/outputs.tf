output "result" {
  description = "The generated availability set name."
  value       = local.results[0]
}

output "results" {
  description = "The generated availability set names."
  value       = local.results
}