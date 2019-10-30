output "result" {
  description = "The generated network security group rule name."
  value       = local.results[0]
}

output "results" {
  description = "The generated network security group rule names."
  value       = local.results
}