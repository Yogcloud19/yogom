
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



resource "aws_instance" "name" {
    ami = "ami-0d0ad8bb301edb745"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.name.id 
    #key_name = "test"
    tags = {
      Name = "test"
    }

  #     lifecycle {
  #   prevent_destroy = true
  # }
    

  # lifecycle {
  #   create_before_destroy = true
  # }
#   lifecycle {
#     ignore_changes = [ tags, ]
#   }
  # lifecycle {
  #   prevent_destroy = true
  # }
}