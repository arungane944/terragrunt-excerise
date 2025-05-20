locals {
  region = "ap-south-1"
  env    = "prod"
}

remote_state {
  backend = "s3"
  config = {
    bucket         = "my-terraform-state-arun944"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = local.region
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
