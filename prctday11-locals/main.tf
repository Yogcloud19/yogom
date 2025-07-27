# VPC creation
resource "aws_vpc" "name" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "test"
  }
}
#Subnets creation
resource "aws_subnet" "name" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "ap-south-1a"
    tags = {
      Name = "test-subnet"
    }
}



locals {
  region        = "ap-south-1"
  instance_type = "t2.micro"
}

resource "aws_instance" "example" {
  ami           = "ami-0d0ad8bb301edb745"
  instance_type = local.instance_type
  subnet_id     = aws_subnet.name.id 
  tags = {
    Name = "App-${local.region}"
  }
}