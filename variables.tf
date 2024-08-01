variable "length" {
  type        = number
  description = "The length of the string desired. The minimum value for length is 1 and, length must also be >= (`min_upper` + `min_lower` + `min_numeric` + `min_special`)."
}

variable "keepers" {
  type        = map(string)
  description = "Arbitrary map of values that, when changed, will trigger recreation of resource."
  default     = null
}

variable "lower" {
  type        = bool
  description = "Include lowercase alphabet characters in the result."
  default     = true
}

variable "upper" {
  type        = bool
  description = "Include uppercase alphabet characters in the result."
  default     = true
}

variable "numeric" {
  type        = bool
  description = "Include numeric characters in the result. If `numeric`, `upper`, `lower`, and `special` are all configured, at least one of them must be set to `true`."
  default     = true
}

variable "special" {
  type        = bool
  description = "Include special characters in the result. These are `!@#$%&*()-_=+[]{}<>:?.`"
  default     = true
}

variable "min_lower" {
  type        = number
  description = "Minimum number of lowercase alphabet characters in the result."
  default     = 0
}

variable "min_upper" {
  type        = number
  description = "Minimum number of uppercase alphabet characters in the result."
  default     = 0
}

variable "min_numeric" {
  type        = number
  description = "Minimum number of numeric characters in the result."
  default     = 0
}

variable "min_special" {
  type        = number
  description = "Minimum number of special characters in the result."
  default     = 0
}

variable "override_special" {
  type        = string
  description = "Supply your own list of special characters to use for string generation. This overrides the default character list in the special argument. The `special` argument must still be set to true for any overwritten characters to be used in generation."
  default     = null
}