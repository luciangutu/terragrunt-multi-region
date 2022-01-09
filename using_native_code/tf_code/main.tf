resource "aws_ssm_parameter" "ssm_a" {
  name  = "myparam"
  type  = "String"
  value = "test"
  provider = aws.a
}

resource "aws_ssm_parameter" "ssm_b" {
  name  = "myparam"
  type  = "String"
  value = "test"
  provider = aws.b
}

resource "aws_ssm_parameter" "ssm_c" {
  name  = "myparam"
  type  = "String"
  value = "test"
  provider = aws.c
}