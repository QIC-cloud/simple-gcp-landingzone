
variable "project_id" {
  type        = string
  description = "The GCP project ID in which to launch resources"
}

variable "region" {
  type        = string
  default     = "me-central2"
  description = "GCP region in which to launch resources"
}
variable "machine_type" {
  type = string
}
variable "workload_name" {
  type = string
}
variable "env" {
  type = string
}
variable "bu" {
  type = string
}
