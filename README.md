# Hetzner Frontend Server Playground

There are two different folders:
- `iac` (infrastructure-as-code): using `opentofu` we can build a simple server on Hetzner Cloud;
- `configuration_management`: using `ansible` we can setup Nginx in our server.

## Getting Started
You must have:
- an account on:
  - cloudflare (for dns);
  - hetzner (for cloud perspective).

## Configure
In `iac`, create a `.tfvars` file in this way:

```tfvars
hcloud_token=<hetzner-api-token>
cloudflare_api_token=<cloudflare_api_token>
cloudflare_zone_id=<cloudflare_zone_id>
cloudflare_domain_name=<cloudflare_domain_name>
```

## Usage
In `iac`:

```bash
$ make init
$ make plan
$ make apply
```

## Utility
- delete `known_hosts`: `ssh-keygen -f '~/.ssh/known_hosts' -R 'cloudflare_domain_name'`
