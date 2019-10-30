output "result" {
  description = "The generated network security group rule name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_.]*$", module.network_security_group_rule.result)
}

output "results" {
  description = "The generated network security group rule names."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_.]*$", module.network_security_group_rule.results)
}