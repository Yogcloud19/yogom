terraform {
  backend "s3" {
    bucket         = "yogom0123sssss"
    key            = "stage/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile = true
  }
}