resource "google_storage_bucket" "gcp-bucket" {
  name     = "nexedge-bucket-princess2005"
  location = "US" 
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "europe10_bucket" {
  name          = "europe10-bucket"
  location      = "europe-west10"
  storage_class = "STANDARD"
}

resource "google_storage_bucket" "europe1_bucket" {
  name          = "europe1-bucket"
  location      = "europe-west1"
  storage_class = "STANDARD"
}