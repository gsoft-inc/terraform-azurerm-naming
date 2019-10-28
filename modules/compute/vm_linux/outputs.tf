output "result" {
  description = "The generated linux virtual machine name."
  value       = regex("^[a-zA-Z0-9-]*$", module.vm_linux.result)
}