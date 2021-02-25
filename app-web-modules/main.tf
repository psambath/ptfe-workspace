provider "aws" {
}

module "server" {
 # source = "app.terraform.io/app/frb-bird/workspaces/app-web/server/aws"
    source  = "app.terraform.io/frb-bird/server/aws"
  version = "1.0.0"
  ami                    = var.ami
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  identity               = var.identity
  web_count              = var.web_count
}
