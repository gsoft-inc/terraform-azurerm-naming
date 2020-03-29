variable "name" {
  description = "key vault name."
  type        = string
}

variable "prefixes" {
  description = "List of prefixes to append in front of the resource name."
  type        = list(string)
}

variable "suffixes" {
  description = "List of suffixes to append at the end of the resource name."
  type        = list(string)
  default     = []
}

variable "nb_instances" {
  default = 1
}