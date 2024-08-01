# Wrapper for the root module

The configuration in this directory contains an implementation of a single module wrapper pattern, which allows managing several copies of a module in places where using the native Terraform 0.13+ for_each feature is not feasible (e.g., with Terragrunt).

You may want to use a single Terragrunt configuration file to manage multiple resources without duplicating terragrunt.hcl files for each copy of the same module.

This wrapper does not implement any extra functionality.

## Usage with Terragrunt

`terragrunt.hcl`:
```hcl
terraform {
  source = "tfr:///andre177/password/random//wrappers"
}

inputs = {
  items = {
    my-item = {
      # omitted... can be any argument supported by the module
    }
    my-second-item = {
      # omitted... can be any argument supported by the module
    }
  }
}
```

## Usage with Terraform
```hcl
terraform {
  source = "tfr:///terraform-aws-modules/s3-bucket/aws//wrappers"
  # Alternative source:
  # source = "git::git@github.com:terraform-aws-modules/terraform-aws-s3-bucket.git//wrappers?ref=master"
}

inputs = {
  items = {
    my-password-1 = {
      length           = 16
      special          = true
      override_special = "!#$%&*()-_=+[]{}<>:?"
    }
    my-password-2 = {
      length           = 12
      special          = false
    }
  }
}
```