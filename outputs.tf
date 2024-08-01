output "bcrypt_hash" {
  value     = random_password.password.bcrypt_hash
  sensitive = true
}

output "result" {
  value     = random_password.password.result
  sensitive = true
}