variable "vpc_name" {
  description = "Name of the existing VPC network"
  type        = string
}

variable "ssh_fw_rule_name" {
  description = "Name of the SSH firewall rule"
  type        = string
}

variable "http_fw_rule_name" {
  description = "Name of the HTTP firewall rule"
  type        = string
}

variable "platform_public_ip" {
  description = "Platform public IP address allowed to access the instances"
  type        = string
}