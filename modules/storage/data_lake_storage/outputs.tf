output "result" {
  description = "The generated data lake storage name name."
  value       = regex("^[a-z0-9]*$", module.data_lake_storage.result)
}

output "results" {
  description = "The generated data lake storage name names."
  value       = regex("^[a-z0-9]*$", module.data_lake_storage.results)
}