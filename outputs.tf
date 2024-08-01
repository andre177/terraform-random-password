output "bcrypt_hashes" {
  value = random_password.random_passwords.*.bcrypt_hash
}

output "ids" {
  value = random_password.random_passwords.*.id
}

output "results" {
  value = random_password.random_passwords.*.result
}