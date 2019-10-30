output "result" {
  description = "The generated virtual network name."
  value       = local.results[0]
}

output "results" {
  description = "The generated virtual network names."
  value       = local.results
}