output "result" {
  description = "The generated data lake storage name name."
  value       = regex("^[a-z0-9]*$", module.data_lake_storage.result)
}