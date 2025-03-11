resource "hcloud_server" "frontend-server" {
  name        = "frontend-server"
  image       = "ubuntu-22.04"
  server_type = "cax11"
  location    = "fsn1"
  ssh_keys    = ["my-ssh-key"]
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
}
