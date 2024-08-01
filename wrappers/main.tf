module "wrapper" {
  source = "../"

  for_each = var.items

  length           = try(each.value.length, "")
  keepers          = try(each.value.keepers, null)
  lower            = try(each.value.lower, true)
  min_lower        = try(each.value.min_lower, 0)
  min_upper        = try(each.value.min_upper, 0)
  min_numeric      = try(each.value.min_numeric, 0)
  min_special      = try(each.value.min_special, 0)
  numeric          = try(each.value.numeric, true)
  override_special = try(each.value.override_special, null)
  special          = try(each.value.special, true)
  upper            = try(each.value.upper, true)
}