module "vm" {
  source       = "../../modules/gce_vm"
  project      = var.project
  region       = var.region
  zone         = var.zone
  name         = var.name
  machine_type = var.machine_type
  image        = var.image
  labels       = var.labels
}
