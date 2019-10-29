output "result" {
  description = "The generated virtual network subnet name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_.]*$", module.subnet.result)
}