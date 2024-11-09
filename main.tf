terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = "project-princess-437716"
  credentials = file("project-princess-437716-b3c93a71941c.json")
}

