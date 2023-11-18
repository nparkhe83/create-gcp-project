resource "google_storage_bucket" "poc-tfstate-bucket" {
  name          = local.poc_storage_bucket_name
  location      = "US"
  force_destroy = true // To allow removal of a non-empty bucket

  uniform_bucket_level_access = true
  versioning {
    enabled = true
  }
}
