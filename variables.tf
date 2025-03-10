variable "hcloud_token" {
  description = "Hetzner Cloud API Token"
  type        = string
  sensitive   = true
}

variable "domain" {
  type        = string
  default     = "example.com"
}
