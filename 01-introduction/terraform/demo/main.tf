terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.11.0"
    }
  }
}

provider "google" {
  credentials = file("<path-to-your-service-account-key-file.json>")
  project = "<your-gcp-project-id>"
  region  = "us-central1"
}

resource "google_storage_bucket" "auto-expire" {
  name          = "<your-gcp-project-id>-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}