locals {
  terraform = {
    workspace = get_terragrunt_dir()
  }
}

terraform {
  source = "tf_code/"
}

remote_state {
    backend = "local"
    config  = {
        path    = "${local.terraform.workspace}/myterraform.tfstate"
    }
}