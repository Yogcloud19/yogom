resource "aws_instance" "name" {
    ami = "ami-0a1235697f4afa8a4"
    instance_type = "t2.micro"
    tags ={
        Name = "yogom"
    }   
}


#terraform import aws_instance.name i-0809c212e8bafad5e   --  chnage the instance id