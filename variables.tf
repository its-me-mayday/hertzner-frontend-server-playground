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

variable "ssh_public_key_path" {
  description = "SSH public key path"
  type        = string
  sensitive   = true
}

variable "ssh_key_name" {
  description = "SSH key name"
  type        = string
  sensitive   = false
  default     = "my-ssh-key"
}
