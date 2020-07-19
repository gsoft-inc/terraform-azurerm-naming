output "result" {
  description = "The generated backup policy name."
  value       = local.results[0]
}

output "results" {
  description = "The generated backup policy names."
  value       = local.results
}