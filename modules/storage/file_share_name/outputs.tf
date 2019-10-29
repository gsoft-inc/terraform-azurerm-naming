output "result" {
  description = "The generated storage account file share name name."
  value       = regex("^[a-z0-9]{1}[a-z0-9-]*$", module.file_share_name.result)
}