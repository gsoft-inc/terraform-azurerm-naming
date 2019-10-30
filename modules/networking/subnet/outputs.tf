output "result" {
  description = "The generated virtual network subnet name."
  value       = local.results[0]
}

output "results" {
  description = "The generated virtual network subnet names."
  value       = local.results
}