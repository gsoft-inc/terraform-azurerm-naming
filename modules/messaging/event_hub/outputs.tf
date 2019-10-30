output "result" {
  description = "The generated event hub name."
  value       = local.results[0]
}

output "results" {
  description = "The generated event hub names."
  value       = local.results
}