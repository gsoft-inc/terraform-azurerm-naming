output "result" {
  description = "The generated storage account name."
  value       = regex("^[a-zA-Z0-9]*$", lower(module.storage_account.result))
}