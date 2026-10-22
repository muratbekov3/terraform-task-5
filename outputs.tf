output "ssh_firewall_name" {
  description = "Name of the created SSH firewall rule"
  value       = google_compute_firewall.ssh.name
}

output "http_firewall_name" {
  description = "Name of the created HTTP firewall rule"
  value       = google_compute_firewall.http.name
}