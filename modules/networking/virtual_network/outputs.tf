output "result" {
  description = "The generated virtual network name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_.]*$", module.virtual_network.result)
}

output "results" {
  description = "The generated virtual network names."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_.]*$", module.virtual_network.results)
}