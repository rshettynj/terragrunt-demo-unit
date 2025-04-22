unit "mys3" {

  #Terragrunt pulls the module unit source from below file system location
  #source = "./s3"
  source = "git::https://github.com/rshettynj/terragrunt-demo-unit.git//units/s3?ref=master"

  #terragrunt puts the pulled source location data to below path location under .terragrunt-stack folder.  Must be relative path. For no_dot_terragrunt_stack true set this to absolute path from the top folder. (not a relative path)
  path = "mys3"

  values = {
   bucket_name = "rshetty-sonal-test-1s"

   tag_owner   = "Roshan Shetty stack"
   tag_purpose = "Demo Only stack"
   tag_details = "Not much details added. stack"
  }
  #no_dot_terragrunt_stack = true
}
