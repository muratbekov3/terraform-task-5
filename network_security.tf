resource "google_compute_firewall" "ssh" {
  name        = var.ssh_fw_rule_name
  network     = var.vpc_name
  description = "allows ssh access from safe IP-range"
  direction   = "INGRESS"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = [var.platform_public_ip]
  target_tags   = ["web-instances"]
}

resource "google_compute_firewall" "http" {
  name        = var.http_fw_rule_name
  network     = var.vpc_name
  description = "allows http access from LoadBalancer"
  direction   = "INGRESS"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = [
    "130.211.0.0/22",
    "35.191.0.0/16",
    var.platform_public_ip
  ]

  target_tags = ["web-instances"]
}