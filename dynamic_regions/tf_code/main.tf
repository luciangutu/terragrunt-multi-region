resource "aws_ssm_parameter" "this" {
  name  = "test-${data.aws_region.current.name}"
  type  = "String"
  value = "something"
}

data "aws_region" "current" {}