output "result" {
  description = "The generated web app name name."
  value       = local.results[0]
}

output "results" {
  description = "The generated web app name names."
  value       = local.results
}