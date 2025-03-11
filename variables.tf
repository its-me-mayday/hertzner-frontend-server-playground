variable "hcloud_token" {
  description = "Hetzner Cloud API Token"
  type        = string
  sensitive   = true
}

variable "cloudflare_api_token" {
  description = "Cloudflare API Token"
  type        = string
  sensitive   = true
}

variable "cloudflare_zone_id" {
  description = "Cloudflare ZoneID"
  type        = string
  sensitive   = true
}

variable "cloudflare_domain_name" {
  description = "Cloudflare domain name"
  type        = string
  sensitive   = false
}
