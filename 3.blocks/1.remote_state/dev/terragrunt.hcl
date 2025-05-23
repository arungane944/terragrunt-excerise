include "root" {
  path = find_in_parent_folders("terragrunt.hcl")
}

terraform {
    source = "https://github.com/arungane944/custom-vpc.git"
}

inputs = {
    vpc_name = "dev-vpc"
}