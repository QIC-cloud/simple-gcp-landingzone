
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
  type        = string
  description = "Set the machine type for you Workload VM"
}
variable "workload_name" {
  type        = string
  description = "Set the name for your Workload"
}
variable "env" {
  type        = string
  description = "Set the environment for your Workload"
}
variable "bu" {
  type        = string
  description = "Set the business unit name for your Workload"
}
variable "deploy_vm_instance" {
  description = "Set whether to deploy a VM instance for your workload or just create the network and subnetwork"
  type        = bool
  default     = true
}
