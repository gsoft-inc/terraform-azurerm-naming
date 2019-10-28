output "result" {
  description = "The generated key vault name."
  value       = regex("^[a-zA-Z]{1}[a-zA-Z0-9-]*$", module.key_vault.result)
}