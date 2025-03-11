resource "cloudflare_record" "frontend" {
  zone_id = var.cloudflare_zone_id
  name    = "frontend.lucamaggio.xyz"
  type    = "A"
  ttl     = 3600
  proxied = false
  content = "88.99.32.249"
}
