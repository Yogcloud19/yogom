provider "aws" {
  
}
resource "aws_instance" "name" {
    ami = "ami-0a1235697f4afa8a4"
    instance_type = "t2.micro"
    #key_name = "test"
  
}



resource "aws_s3_bucket" "name" {
    bucket = "adcgdcswdwdwdwdwdc"
  
}

# terraform plan --target=aws_instance.name