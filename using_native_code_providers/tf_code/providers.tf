provider "aws" {
  region = var.aws_regions[0]
}

provider "aws" {
  alias  = "a"
  region = var.aws_regions[0]
}

provider "aws" {
  alias  = "b"
  region = var.aws_regions[1]
}

provider "aws" {
  alias  = "c"
  region = var.aws_regions[2]
}