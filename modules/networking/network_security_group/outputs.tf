output "result" {
  description = "The generated network security group name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_.]*$", module.network_security_group.result)
}