output "result" {
  description = "The generated windows virtual machine name."
  value       = local.results[0]
}

output "results" {
  description = "The generated windows virtual machine names."
  value       = local.results
}