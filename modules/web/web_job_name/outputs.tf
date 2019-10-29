output "result" {
  description = "The generated web job name name."
  value       = regex("^[a-zA-Z0-9-]*$", module.web_job_name.result)
}