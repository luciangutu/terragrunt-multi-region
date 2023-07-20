locals {
  aws_region = get_env("AWS_REGION", "us-east-1")
}

terraform {
  source = "tf_code///"
}

remote_state {
  backend = "s3"
  config = {
    encrypt                = true
    bucket                 = "test-lg-state-${local.aws_region}"
    key                    = "${path_relative_to_include()}/terraform.tfstate"
    region                 = local.aws_region
    dynamodb_table         = "terraform-locks"
    skip_bucket_versioning = true
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region = "${local.aws_region}"
}
EOF
}