locals {
  terraform = {
    workspace = get_terragrunt_dir()
    regions = split(",", get_env("AWS_REGIONS", "us-east-1,eu-west-1,us-west-1"))
    alias = "aws"
  }
  ssm = {
    ssm_param_name = "myparam"
    name = "test"
  }
}

generate "providers" {
  path      = "_providers.tf"
  if_exists = "overwrite_terragrunt"
  contents  = templatefile(
    format("%s/templates/providers.tmpl", local.terraform.workspace), local.terraform)
}

generate "ssm" {
  path      = "_ssm.tf"
  if_exists = "overwrite_terragrunt"
  contents  = templatefile(
    format("%s/templates/ssm.tmpl", local.terraform.workspace),
    merge(
      local.terraform,
      local.ssm
    )
  )
}

remote_state {
    backend = "local"
    config  = {
        path    = "${local.terraform.workspace}/myterraform.tfstate"
    }
}