resource "hcloud_server" "frontend_server" {
  name        = "frontend-server"
  image       = "ubuntu-22.04"
  server_type = "cax11"
  location    = "fsn1"
  ssh_keys    = [hcloud_ssh_key.ssh_public_key.name]
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
}
