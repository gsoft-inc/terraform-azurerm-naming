output "result" {
  description = "The generated web app name."
  value       = local.results[0]
}

output "results" {
  description = "The generated web app names."
  value       = local.results
}