
resource "random_string" "random" {
  length  = 14
  numeric = false
  special = false
  lower   = true
  upper   = false
}



resource "google_storage_bucket" "static-site" {
  name          = "backend-terraform-${random_string.random.result}"
  location      = "EU"
  force_destroy = true