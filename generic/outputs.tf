output "result" {
  description = "The generated resource name."
  value       = substr("${local.prefix}${local.separated_name}${local.suffix}", 0, var.max_length)
}
