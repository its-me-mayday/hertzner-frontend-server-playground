resource "cloudflare_record" "frontend" {
  zone_id = var.cloudflare_zone_id
  name    = "frontend.${var.cloudflare_domain_name}"
  type    = "A"
  ttl     = 3600
  proxied = false
  content = hcloud_server.frontend_server.ipv4_address

  depends_on = [hcloud_server.frontend_server]
}

resource "cloudflare_record" "isnot_frontend" {
  zone_id = var.cloudflare_zone_id
  name    = "isnot-frontend.${var.cloudflare_domain_name}"
  type    = "A"
  ttl     = 3600
  proxied = false
  content = hcloud_server.frontend_server.ipv4_address

  depends_on = [hcloud_server.frontend_server]
}
