output "vm_public_ip" {
  description = "The public IP address of the VM instance"
  value       = google_compute_instance.vm_instance[*].network_interface[0].access_config[0].nat_ip
}
output "vm_private_ip" {
  description = "The private IP address of the VM instance"
  value       = google_compute_instance.vm_instance[*].network_interface[0].network_ip
}
