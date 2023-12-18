provider "google" {
  credentials = file(replace(var.credentials_path, "\\", "\\\\"))
  project     = var.project_id
  region      = var.region
}

resource "google_storage_bucket" "data_bucket" {
  name          = var.bucket_name
  location      = var.region
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type          = "SetStorageClass"
      storage_class = "COLDLINE"
    }

    condition {
      age = 365
    }
  }
}

resource "google_storage_bucket_object" "transaction_data_raw" {
  name   = "raw_data/"
  bucket = google_storage_bucket.data_bucket.name
  content = "placeholder_content"
}