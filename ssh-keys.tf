resource "hcloud_ssh_key" "main" {
  name       = "my-ssh-key"
  public_key = file("~/.ssh/hertzner.pub")
}
