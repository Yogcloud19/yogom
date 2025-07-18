module "project" {
    source = "../prctday9-module"
    ami_id = "ami-0a1235697f4afa8a4"
    instance_type = "t2.micro"
    #key = "test"
    az = "ap-south-1b"

  
}