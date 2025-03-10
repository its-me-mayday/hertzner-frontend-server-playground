resource "hcloud_server" "frontend-server" {
  name        = "frontend-server"
  image       = "ubuntu-22.04"
  server_type = "cx11"
  location    = "fsn1"
  ssh_keys    = ["my-ssh-key"]
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
  user_data   = templatefile("cloud-init.yaml", {
    domain          = var.domain,
    ssh_public_key  = file("~/.ssh/hertzner.pub")
  })

  provisioner "file" {
    source      = "frontend-files/"
    destination = "/tmp/frontend-files"
    connection {
      type        = "ssh"
      user        = "root"
      private_key = file("~/.ssh/hertzner")
      host        = self.ipv4_address
    }
  }
}
