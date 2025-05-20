terraform {
    source = "https://github.com/arungane944/custom-vpc.git"
}

inputs = {
    vpc_name = "${local.common_vars.inputs.project}-${local.common_vars.inputs.env}-vpc"
}

locals {
    common_vars = read_terragrunt_config(find_in_parent_folders("common.hcl"))
}

include {
    path = find_in_parent_folders()
}