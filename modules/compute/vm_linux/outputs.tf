output "result" {
  description = "The generated linux virtual machine name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-]*$", module.vm_linux.result)
}

output "results" {
  description = "The generated linux virtual machine names."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-]*$", module.vm_linux.results)
}