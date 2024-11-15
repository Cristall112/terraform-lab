resource "google_compute_network" "vpc-network" {
  name                    = "my-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "my-subnet"
  ip_cidr_range = "10.0.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc-network.id
}

resource "google_compute_subnetwork" "subnet" {
  name          = "my-subnet_1"
  ip_cidr_range = "10.0.0.0/24"
  region        = "europe-west10"
  network       = google_compute_network.vpc-network.id
}

resource "google_compute_subnetwork" "subnet" {
  name          = "my-subnet_2"
  ip_cidr_range = "10.0.0.0/24"
  region        = "europe-west1"
  network       = google_compute_network.vpc-network.id
}

resource "google_compute_firewall" "allow_http_https" {
  name    = "dim-princess"
  network = google_compute_network.vpc-network.id

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"] # Allow traffic from any IP address
}

