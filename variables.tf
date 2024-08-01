variable "random_passwords" {
  description = "Map of random passwords to be created"
  type = map(
    object({
      length           = number
      keepers          = optional(map(string))
      lower            = optional(bool)
      min_lower        = optional(number)
      min_upper        = optional(number)
      min_numeric      = optional(number)
      min_special      = optional(number)
      numeric          = optional(bool)
      override_special = optional(string)
      special          = optional(bool)
      upper            = optional(bool)
    })
  )
}