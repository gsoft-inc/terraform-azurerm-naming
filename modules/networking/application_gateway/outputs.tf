output "result" {
  description = "The generated application gateway name."
  value       = local.results[0]
}

output "results" {
  description = "The generated application gateway names."
  value       = local.results
}