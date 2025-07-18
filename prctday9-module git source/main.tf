module "project" {
    source = "git::https://github.com/Yogcloud19/yogom.git//prctday9-module"
    ami_id = "ami-0a1235697f4afa8a4"
    instance_type = "t2.micro"
    #key = "test"
    az = "ap-south-1b"

  
}