resource "random_string" "random" {
  length  = 16
  special = false
  lower   = true
  number  = false
  upper   = false
}
