terraform {
  required_version = ">= 1.5.0"
  required_providers { google = { source = "hashicorp/google" } }
}

provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "vm" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  labels = var.labels
}

output "vm_name" { value = google_compute_instance.vm.name }
output "vm_zone" { value = var.zone }
output "vm_ip"   { value = try(google_compute_instance.vm.network_interface[0].access_config[0].nat_ip, "") }
