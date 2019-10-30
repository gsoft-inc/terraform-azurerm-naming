output "result" {
  description = "The generated load balancer name."
  value       = local.results[0]
}

output "results" {
  description = "The generated load balancer names."
  value       = local.results
}