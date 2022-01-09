module "ssm_a" {
  source = "./module"
  name = "myparam-a"
  type = "String"
  value = "test"
  providers = {
    aws = aws.a
  }
}

module "ssm_b" {
  source = "./module"
  name = "myparam-b"
  type = "String"
  value = "test"
  providers = {
    aws = aws.b
  }
}

module "ssm_c" {
  source = "./module"
  name = "myparam-c"
  type = "String"
  value = "test"
  providers = {
    aws = aws.c
  }
}
