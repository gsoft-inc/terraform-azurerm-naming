output "result" {
  description = "The generated event hubs namespace name."
  value       = local.results[0]
}

output "results" {
  description = "The generated event hubs namespace names."
  value       = local.results
}