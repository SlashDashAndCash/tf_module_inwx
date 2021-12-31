
terraform {
  required_providers {
    inwx = {
      source = "registry.terraform.io/ofzhur/inwx"
    }
  }
}


provider "inwx" {
  username = var.inwx_username
  password = var.inwx_password
}
