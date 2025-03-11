variable "hcloud_token" {
  description = "Hetzner Cloud API Token"
  type        = string
  sensitive   = true
}

variable "hcloud_server_name" {
  description = "Hetzner Cloud Server Name"
  type        = string
  sensitive   = false
  default     = "frontend-server"
}

variable "hcloud_server_image_name" {
  description = "Hetzner Cloud Server Image Name"
  type        = string
  sensitive   = false
  default     = "ubuntu-22.04"
}

variable "hcloud_server_type_name" {
  description = "Hetzner Cloud Server Type Name"
  type        = string
  sensitive   = false
  default     = "cax11"
}

variable "hcloud_server_location_name" {
  description = "Hetzner Cloud Server location Name"
  type        = string
  sensitive   = false
  default     = "fsn1"
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
