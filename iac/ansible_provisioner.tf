resource "null_resource" "ansible_provisioner" {
  triggers = {
    server_ip = hcloud_server.frontend_server.ipv4_address
  }

  depends_on = [
    hcloud_server.frontend_server,
    cloudflare_record.frontend,
    cloudflare_record.isnot_frontend,
    local_file.private_key
  ]

  provisioner "local-exec" {
    command = <<-EOT
      cd ${path.module}/../configuration_management && \
      ansible-playbook -i inventory.yml playbooks/site.yml
    EOT

    environment = {
      DOMAIN_NAME = cloudflare_record.frontend.name
    }
  }
}
