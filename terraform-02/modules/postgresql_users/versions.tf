terraform {
  required_version = "~> 1.11"
  required_providers {
    # https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "~> 1.21.0"
    }
    # https://registry.terraform.io/providers/hashicorp/random/latest
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
}

provider "postgresql" {
  host     = var.postgres_host
  port     = var.postgres_port
  username = var.postgres_root
  password = var.postgres_root_password
  sslmode  = "disable"
}
