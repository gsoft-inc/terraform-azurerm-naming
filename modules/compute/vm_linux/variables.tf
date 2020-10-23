variable "name" {
  description = "linux virtual machine name."
  type        = string
}

variable "separator" {
  description = "Separator string use to delimit resource name segments."
  type        = string
  default     = null
}

variable "prefixes" {
  description = "List of prefixes to append in front of the resource name."
  type        = list(string)
}

variable "suffixes" {
  description = "List of suffixes to append at the end of the resource name."
  type        = list(string)
  default     = null
}

variable "nb_instances" {
  default = 1
}