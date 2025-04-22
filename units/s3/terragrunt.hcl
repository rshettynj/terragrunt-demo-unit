include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  #source = "file:///data/terragrunt/modules/s3"
  source = "git::https://github.com/rshettynj/terragrunt-demo-modules.git//s3?ref=master"
}

inputs = {

  bucket_name = values.bucket_name

  tag_owner   = values.tag_owner
  tag_purpose = values.tag_purpose 
  tag_details = values.tag_details

  /*
  bucket_name = "rshetty-sonal-test-1s"

  tag_owner   = "Roshan Shetty 1s"
  tag_purpose = "Demo Only s"
  tag_details = "Not much details added. s"
  */
}
