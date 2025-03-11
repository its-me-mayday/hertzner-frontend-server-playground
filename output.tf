output "server_ip" {
  value = hcloud_server.frontend_server.ipv4_address
}

output "cloudflare_record_frontend" {
  value = cloudflare_record.frontend.name
}

output "cloudflare_record_isnot_frontend" {
  value = cloudflare_record.isnot_frontend.name
}

output "ssh_public_key" {
  value = hcloud_ssh_key.ssh_public_key.public_key
}
