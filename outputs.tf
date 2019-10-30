output "result" {
  description = "The generated resource name."
  value = local.results[0]
}

output "results" {
  description = "The generated resource names."
  value = local.results
}
