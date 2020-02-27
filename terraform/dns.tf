provider "aws" {
  region  = "us-west-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_route53_record" "test" {
  zone_id = var.aws_route53_record_zone_id
  name    = "test"
  ttl     = "5"
  type    = "A"
  records = ["${digitalocean_droplet.default.ipv4_address}"]
}
