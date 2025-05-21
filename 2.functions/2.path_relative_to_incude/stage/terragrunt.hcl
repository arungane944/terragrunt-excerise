include "root" {
  path = find_in_parent_folders("terragrunt.hcl")
}
terraform {
    source = "https://github.com/arungane944/custom-vpc.git"
}

locals {
    common_vars = read_terragrunt_config(find_in_parent_folders("common.hcl"))
}

inputs = {
    vpc_name = "${local.common_vars.inputs.project}-${local.common_vars.inputs.env}-vpc"
}