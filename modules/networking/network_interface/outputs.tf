output "result" {
  description = "The generated network interface name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_.]*$", module.network_interface.result)
}