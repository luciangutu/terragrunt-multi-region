resource "aws_ssm_parameter" "this" {
  count = var.create_parameter ? 1 : 0

  name  = var.name
  type  = var.type
  value = var.value
  description = var.description
}