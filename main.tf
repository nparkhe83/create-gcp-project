provider "google" {
  project = "admin-nilesh"
  region  = "us-central1"
}

resource "random_id" "random" {
  byte_length = 4
}

locals {
  project_id = "poc-${random_id.random.hex}"
}

resource "google_project" "poc" {
  // Create Google Project to create infra for cloudskillboost labs

  name                = "Nilesh-PoC"
  project_id          = local.project_id
  auto_create_network = false
  billing_account     = var.billing_account_id
}


resource "google_project_service" "compute_API" {
  service = "compute.googleapis.com"
  project = local.project_id

  depends_on = [google_project.poc]
}
