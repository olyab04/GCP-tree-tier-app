# resource "random_string" "random" {
# 	length = 14
# 	special = false
# 	upper = false
# }

# provider "google" {
# 	region = var.bucket_config["region"]
# 	zone = var.bucket_config["zone"]
# }


# resource "google_storage_bucket" "bucket" {
# 	name = "bucket-terraform-${random_string.random.result}"
# 	location = var.bucket_config["bucket_location"]
# 	force_destroy = true
# }
