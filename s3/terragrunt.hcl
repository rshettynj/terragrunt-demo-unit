include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  #source = "file:///data/terragrunt/modules/s3"
  source = "git::https://github.com/rshettynj/terragrunt-demo-modules.git//s3?ref=master"
}

inputs = {
  bucket_name = "rshetty-sonal-test-1"

  tag_owner   = "Roshan Shetty 1"
  tag_purpose = "Demo Only"
  tag_details = "Not much details added."
}
