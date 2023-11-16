
resource "google_storage_bucket" "admin-tfstate-bucket" {
  name          = "admin-tfstate-bucket"
  location      = "US"
  force_destroy = true // To allow removal of a non-empty bucket

  uniform_bucket_level_access = true
}


resource "google_storage_bucket" "poc-tfstate-bucket" {
  name          = local.poc_storage_bucket_name
  location      = "US"
  force_destroy = true // To allow removal of a non-empty bucket

  uniform_bucket_level_access = true
}

