resource "cloudflare_record" "frontend" {
  zone_id = var.cloudflare_zone_id
  name    = "frontend.${var.cloudflare_domain_name}"
  type    = "A"
  ttl     = 3600
  proxied = false
  content = "88.99.32.249"
}

resource "cloudflare_record" "isnot-frontend" {
  zone_id = var.cloudflare_zone_id
  name    = "isnot-frontend.${var.cloudflare_domain_name}"
  type    = "A"
  ttl     = 3600
  proxied = false
  content = "88.99.32.249"
}
