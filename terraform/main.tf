provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_ssh_key" "default" {
  name       = "macbookair"
  public_key = file(var.public_key)
}

resource "digitalocean_droplet" "default" {
  image    = var.image
  name     = var.name
  region   = var.region
  size     = var.size
  ssh_keys = ["${digitalocean_ssh_key.default.fingerprint}"]
  tags = ["test", "chaolopezpa"]
}

