output "result" {
  description = "The generated windows virtual machine name."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-]*$", module.vm_windows.result)
}

output "results" {
  description = "The generated windows virtual machine names."
  value       = regex("^[a-zA-Z0-9]{1}[a-zA-Z0-9-]*$", module.vm_windows.results)
}