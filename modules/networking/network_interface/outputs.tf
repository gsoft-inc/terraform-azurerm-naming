output "result" {
  description = "The generated network interface name."
  value       = local.results[0]
}

output "results" {
  description = "The generated network interface names."
  value       = local.results
}