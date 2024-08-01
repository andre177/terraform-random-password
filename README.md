# Random password module

Terraform module which generates a random password using Hashicorp's Random provider. This intent of this module is to make Terragrunt users able to use Terraform's resource `random_password`.

## Usage

### Generating a password specifying special characters to be used

```hcl
module "random_password" {
  source = "andre177/password/random"

  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.6 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.6 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_keepers"></a> [keepers](#input\_keepers) | Arbitrary map of values that, when changed, will trigger recreation of resource. | `map(string)` | `null` | no |
| <a name="input_length"></a> [length](#input\_length) | The length of the string desired. The minimum value for length is 1 and, length must also be >= (`min_upper` + `min_lower` + `min_numeric` + `min_special`). | `number` | n/a | yes |
| <a name="input_lower"></a> [lower](#input\_lower) | Include lowercase alphabet characters in the result. | `bool` | `true` | no |
| <a name="input_min_lower"></a> [min\_lower](#input\_min\_lower) | Minimum number of lowercase alphabet characters in the result. | `number` | `0` | no |
| <a name="input_min_numeric"></a> [min\_numeric](#input\_min\_numeric) | Minimum number of numeric characters in the result. | `number` | `0` | no |
| <a name="input_min_special"></a> [min\_special](#input\_min\_special) | Minimum number of special characters in the result. | `number` | `0` | no |
| <a name="input_min_upper"></a> [min\_upper](#input\_min\_upper) | Minimum number of uppercase alphabet characters in the result. | `number` | `0` | no |
| <a name="input_numeric"></a> [numeric](#input\_numeric) | Include numeric characters in the result. If `numeric`, `upper`, `lower`, and `special` are all configured, at least one of them must be set to `true`. | `bool` | `true` | no |
| <a name="input_override_special"></a> [override\_special](#input\_override\_special) | Supply your own list of special characters to use for string generation. This overrides the default character list in the special argument. The `special` argument must still be set to true for any overwritten characters to be used in generation. | `string` | `null` | no |
| <a name="input_special"></a> [special](#input\_special) | Include special characters in the result. These are `!@#$%&*()-_=+[]{}<>:?.` | `bool` | `true` | no |
| <a name="input_upper"></a> [upper](#input\_upper) | Include uppercase alphabet characters in the result. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bcrypt_hash"></a> [bcrypt\_hash](#output\_bcrypt\_hash) | n/a |
| <a name="output_result"></a> [result](#output\_result) | n/a |
