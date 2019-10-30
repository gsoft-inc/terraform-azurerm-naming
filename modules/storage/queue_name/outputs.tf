output "result" {
  description = "The generated storage account queue name name."
  value       = regex("^[a-z0-9]{1}[a-z0-9-]*$", module.queue_name.result)
}

output "results" {
  description = "The generated storage account queue name names."
  value       = regex("^[a-z0-9]{1}[a-z0-9-]*$", module.queue_name.results)
}