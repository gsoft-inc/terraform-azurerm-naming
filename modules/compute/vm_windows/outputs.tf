output "result" {
  description = "The generated windows virtual machine name."
  value       = regex("^[a-zA-Z0-9-]*$", module.vm_windows.result)
}