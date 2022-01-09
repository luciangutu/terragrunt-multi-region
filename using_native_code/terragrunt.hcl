locals {
  terraform = {
    workspace = get_terragrunt_dir()
    regions = split(",", get_env("AWS_REGIONS", "us-east-1,eu-west-1,us-west-1"))
    alias = "aws"
  }
}

# Generate an AWS provider block for multi-region
generate "provider" {
  path      = "_provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region = "${local.terraform.regions[0]}"
  alias  = "a"
}
provider "aws" {
  alias  = "b"
  region = "${local.terraform.regions[1]}"
}
provider "aws" {
  alias  = "c"
  region = "${local.terraform.regions[2]}"
}
EOF
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