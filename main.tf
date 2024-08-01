resource "random_password" "random_passwords" {
  for_each = var.random_passwords

  length           = each.value.length
  keepers          = each.value.keepers
  lower            = each.value.lower
  min_lower        = each.value.min_lower
  min_upper        = each.value.min_upper
  min_numeric      = each.value.min_numeric
  min_special      = each.value.min_special
  numeric          = each.value.numeric
  override_special = each.value.override_special
  special          = each.value.special
  upper            = each.value.upper
}
