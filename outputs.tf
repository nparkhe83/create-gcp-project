output "poc_project_id" {
  value = local.project_id
}

output "poc_backend_bucket_id" {
  value = google_storage_bucket.poc-tfstate-bucket.name
}
