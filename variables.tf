variable "name" {
  description = "Resource name."
  type        = string
}

variable "nb_instances" {
  default = 1
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

variable "separator" {
  description = "The name, prefix and suffix separator (defaults to '-')."
  type        = string
  default     = "-"
}

variable "max_length" {
  description = "The maximum length of the overall name (prefix + name + suffix)."
  type        = number
  default     = 256
}
