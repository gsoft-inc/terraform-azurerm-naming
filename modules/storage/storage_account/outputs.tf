output "result" {
  description = "The generated storage account name."
  value       = regex("^[a-z0-9]*$", module.storage_account.result)
}

output "results" {
  description = "The generated storage account names."
  value       = regex("^[a-z0-9]*$", module.storage_account.results)
}