remote_state {
    backend = "s3"
    config = {
        bucket         = "s3-backend-arun-tg"
        key            = "${path_relative_to_include()}/terraform.tfstate"
        region         = "ap-south-1"
        encrypt        = true
        dynamodb_table = "terraform-locks"
    }
    generate = {
        path = "backend.tf"
        if_exists = "overwrite_terragrunt"
    }
}