output "result" {
  description = "The generated api management name."
  value       = local.results[0]
}

output "results" {
  description = "The generated api management names."
  value       = local.results
}