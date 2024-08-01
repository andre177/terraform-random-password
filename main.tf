resource "random_password" "password" {
  length           = var.length
  keepers          = var.keepers
  lower            = var.lower
  min_lower        = var.min_lower
  min_upper        = var.min_upper
  min_numeric      = var.min_numeric
  min_special      = var.min_special
  numeric          = var.numeric
  override_special = var.override_special
  special          = var.special
  upper            = var.upper
}
