terraform {

  backend "s3" {

    bucket = "yougom"
    key    = "terraform.tfstate"

    region = "us-east-1"

  }

}