output "result" {
  description = "The generated availability set name."
  value       = regex("^[a-zA-Z0-9_-]*$", module.availability_set.result)
}