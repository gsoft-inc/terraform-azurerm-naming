output "result" {
  description = "The generated linux virtual machine name."
  value       = local.results[0]
}

output "results" {
  description = "The generated linux virtual machine names."
  value       = local.results
}