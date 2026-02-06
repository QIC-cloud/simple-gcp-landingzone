resource "google_compute_network" "vpc_network" {
  name                    = "${var.bu}-${var.workload_name}-${var.env}-vpc"
  auto_create_subnetworks = true
  project                 = var.project_id
}

resource "google_compute_instance" "vm_instance" {
  count        = var.deploy_vm_instance ? 1 : 0
  name         = "${var.bu}-${var.workload_name}-${var.env}-vm"
  machine_type = var.machine_type
  project      = var.project_id
  zone         = "${var.region}-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
      # Ephemeral external IP
    }
  }
}
