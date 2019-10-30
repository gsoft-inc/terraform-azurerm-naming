output "result" {
  description = "The generated traffic manager profile name."
  value       = local.results[0]
}

output "results" {
  description = "The generated traffic manager profile names."
  value       = local.results
}