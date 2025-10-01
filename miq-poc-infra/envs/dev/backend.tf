terraform {
  backend "gcs" {
    bucket = "miq-poc-artifacts-<region>-<date>"
    prefix = "tfstate/dev"
  }
}
