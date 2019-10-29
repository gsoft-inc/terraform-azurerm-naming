output "result" {
  description = "The generated storage account table name name."
  value       = regex("^[a-zA-Z0-9]*$", module.table_name.result)
}