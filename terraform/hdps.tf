resource "digitalocean_droplet" "hdps" {
  count    = var.hdps_count
  image    = "docker-20-04"
  name     = "hdps-${count.index}"
  region   = var.region
  size     = "s-6vcpu-16gb"
  tags   = [digitalocean_tag.hdps.id]
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}
