output "result" {
  description = "The generated load balancer rules config name."
  value       = local.results[0]
}

output "results" {
  description = "The generated load balancer rules config names."
  value       = local.results
}