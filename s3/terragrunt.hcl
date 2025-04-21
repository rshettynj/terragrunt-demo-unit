include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "file:///data/terragrunt/modules/s3"
}

inputs = {
  bucket_name = "rshetty-sonal-test-1"

  tag_owner   = "Roshan Shetty 1"
  tag_purpose = "Demo Only"
  tag_details = "Not much details added."
}
