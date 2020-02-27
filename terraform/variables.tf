
variable "do_token" {
}

variable "aws_access_key" {
  default = ""
}

variable "aws_secret_key" {
  default = ""
}


variable "public_key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "ssh_private_key" {
  default = "~/.ssh/id_rsa"
}


variable "image" {
  default = "ubuntu-18-04-x64"
}

variable "name" {
  default = "test.chaolopez.com"
}

variable "region" {
  default = "nyc3"
}

variable "size" {
  default = "s-1vcpu-1gb"
}


# chaolopezpa
variable "aws_route53_record_zone_id" {
  default="ZG3UC1XY1JO30"
}

variable "ssh_username" {
  default = "root"
}

