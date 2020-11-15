provider "digitalocean" {
  version = "1.22.2"
  token   = var.do_token
}

resource "digitalocean_ssh_key" "default" {
  name       = "Default SSH key"
  public_key = file(var.public_key)
}

resource "digitalocean_tag" "hdps" {
  name = "hdps"
}
