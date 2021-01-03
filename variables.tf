# Provider
variable "inwx_username" {}
variable "inwx_password" {}

# DNS
variable "fqdn" {}
variable "ipv4_address" {}
variable "ipv6_address" {}
variable "ttl" {
  type = number
  default = 600
}
