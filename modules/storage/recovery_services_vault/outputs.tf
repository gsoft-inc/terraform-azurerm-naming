output "result" {
  description = "The generated recovery services vault name."
  value       = local.results[0]
}

output "results" {
  description = "The generated recovery services vault names."
  value       = local.results
}