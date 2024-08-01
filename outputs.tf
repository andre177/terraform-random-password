output "bcrypt_hash" {
  value       = random_password.password.bcrypt_hash
  sensitive   = true
  description = "A bcrypt hash of the generated random string. NOTE: If the generated random string is greater than 72 bytes in length, `bcrypt_hash` will contain a hash of the first 72 bytes."
}

output "result" {
  value       = random_password.password.result
  sensitive   = true
  description = "The generated random string"
}