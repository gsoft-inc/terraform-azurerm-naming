output "result" {
  description = "The generated managed disk name name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-_]*$", module.managed_disk_name.result)
}