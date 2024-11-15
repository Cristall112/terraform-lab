resource "google_compute_instance" "test-vm" {
  name         = "my-vm"
  machine_type = "e2-micro"          
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    subnetwork = "my-subnet"

    access_config {  
    }
  }
}

resource "google_compute_instance" "ubuntu_instance" {
  name         = "ubuntu-instance"
  machine_type = "e2-medium"
  zone         = "europe-west10-a"

  boot_disk {
    initialize_params {
      image  = google_compute_image.ubuntu.self_link
    }
  }

  network_interface {
    network    = google_compute_network.vpc-network.id
    subnetwork = google_compute_subnetwork.subnet_1.id
  }
}

resource "google_compute_instance" "debian_instance" {
  name         = "debian-instance"
  machine_type = "e2-medium"
  zone         = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = google_compute_image.debian.self_link
    }
  }

  network_interface {
    network    = google_compute_network.vpc-network.id
    subnetwork = google_compute_subnetwork.subnet_2.id
  }
}

resource "google_compute_image_family" "ubuntu" {
 family  = "ubuntu-2204-lts"
project = "ubuntu-os-cloud"
}

resource "google_compute_image_family" "debian" {
  project = "debian-cloud"
  family  = "debian-11"
}