unit "mys3" {

  #Terragrunt pulls the module unit source from below file system location
  source = "./s3"

     #terragrunt puts the pulled source location data to below path location under .terragrunt-stack folder. 
  path = "mys3"

  /*

  values = {
   bucket_name = "rshetty-sonal-test-1"

   tag_owner   = "Roshan Shetty 1"
   tag_purpose = "Demo Only"
   tag_details = "Not much details added."
  }
  */
}
