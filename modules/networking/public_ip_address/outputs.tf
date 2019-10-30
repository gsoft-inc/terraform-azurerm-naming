output "result" {
  description = "The generated public ip address name."
  value       = local.results[0]
}

output "results" {
  description = "The generated public ip address names."
  value       = local.results
}