
remote_state {
  backend = "s3"
  config = {
    bucket = "s3-backend-arun-tg"
    region = "ap-south-1"
    key    = "${path_relative_to_include()}/tofu.tfstate"
  }
}