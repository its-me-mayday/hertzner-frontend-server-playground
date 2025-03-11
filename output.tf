output "server_ip" {
  value = hcloud_server.frontend-server.ipv4_address
}

output "cloudflare_record_frontend" {
  value = cloudflare_record.frontend.name
}
