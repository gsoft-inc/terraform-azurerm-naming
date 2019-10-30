output "result" {
  description = "The generated network security group name."
  value       = local.results[0]
}

output "results" {
  description = "The generated network security group names."
  value       = local.results
}