locals {
  domains = split(".", var.fqdn)
  hostname = local.domains[0]
  domain = join(".", slice(local.domains, 1, length(local.domains)))
}


resource "inwx_record" "server_a" {
  domain   = local.domain
  name     = var.fqdn
  type     = "A"
  value    = var.ipv4_address
  ttl      = var.ttl
}

resource "inwx_record" "server_aaaa" {
  domain   = local.domain
  name     = var.fqdn
  type     = "AAAA"
  value    = var.ipv6_address
  ttl      = var.ttl
}
