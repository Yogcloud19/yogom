provider "aws" {
  region = "us-west-2"  // Specify your desired AWS region
}


resource "aws_instance" "day4" {
  ami           = "ami-05ffe3c48a9991133"
  instance_type = "t2.micro"
  tags = {
    Name = "day-4"
  }
}

