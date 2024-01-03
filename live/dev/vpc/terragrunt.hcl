# Automatically find the root terragrunt.hcl and inherit its
# configuration
include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/vpc"
}

inputs = {
  cidr =  "10.0.0.0/16"
  subnet_cidr = "10.0.0.0/24"
}