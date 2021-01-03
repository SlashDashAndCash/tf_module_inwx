terraform {
  required_providers {
    inwx = {
      source = "terraform.local/inwx/inwx"
    }
  }
}

provider "inwx" {
  username = var.inwx_username
  password = var.inwx_password
}
