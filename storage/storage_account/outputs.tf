output "result" {
  description = "The generated storage account name."
  value       = lower(module.storage_account.result)
}