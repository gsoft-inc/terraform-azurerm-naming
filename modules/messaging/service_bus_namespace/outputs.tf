output "result" {
  description = "The generated service bus namespace name."
  value       = local.results[0]
}

output "results" {
  description = "The generated service bus namespace names."
  value       = local.results
}