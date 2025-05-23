locals {
  terragrunt_dir = get_terragrunt_dir()
}

generate "locals-output" {
  path      = "locals-output.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
output "terragrunt_dir" {
  value = "${local.terragrunt_dir}"
}
EOF
}