output "result" {
  description = "The generated load balancer name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_.]*$", module.load_balancer.result)
}