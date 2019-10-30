output "result" {
  description = "The generated load balancer rules config name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_.]*$", module.load_balancer_rules_config.result)
}

output "results" {
  description = "The generated load balancer rules config names."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_.]*$", module.load_balancer_rules_config.results)
}