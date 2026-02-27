resource "google_compute_instance" "this_instance" {
  name         = var.instance_name
  machine_type = var.instanace_type
  zone         = var.instance_zone
  tags         = var.instance_tags
  labels       = var.instance_labels

  boot_disk {
    initialize_params {
      image = var.instance_iamge
    }
  }
  network_interface {
    network    = var.instance_vpc
    subnetwork = var.instance_subnet
    access_config {

    }
  }
}
