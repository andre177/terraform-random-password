output "bcrypt_hashe" {
  value     = random_password.password.bcrypt_hash
  sensitive = true
}

output "id" {
  value = random_password.password.id
}

output "outputs" {
  value     = random_password.password.id
  sensitive = true
}