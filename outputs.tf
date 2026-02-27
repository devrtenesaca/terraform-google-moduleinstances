output "out_instance_name" {
  description = "name of instance"
  value       = google_compute_instance.this_instance.name
}
output "out_instance_ip" {
  description = "ip of instance"
  value       = google_compute_instance.this_instance.network_interface[0].access_config[0].nat_ip
}
output "out_instance_ip_private" {
  description = "ip private of instance"
  value       = google_compute_instance.this_instance.network_interface[0].network_ip
}
