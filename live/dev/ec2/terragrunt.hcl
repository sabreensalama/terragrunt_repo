# Automatically find the root terragrunt.hcl and inherit its
# configuration
include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/ec2"
  #source = "git::git@github.com:sabreensalama/terragrunt-modules.git//modules/vpc?ref=v0.1"
}

dependency "vpc" {
  config_path = "../vpc"
}

inputs = {
  instance_name = "example-server-dev"
  subnet_id  = dependency.vpc.outputs.subnet_id
}