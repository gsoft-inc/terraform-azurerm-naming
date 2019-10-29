output "result" {
  description = "The generated storage account queue name name."
  value       = regex("^[a-z0-9]{1}[a-z0-9-]*$", module.queue_name.result)
}