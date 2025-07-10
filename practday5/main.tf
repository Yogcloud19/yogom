provider "aws" {
  region = "us-east-1"  # Specify your desired AWS region
}

resource "aws_instance" "day4" {
  ami           = "ami-05ffe3c48a9991133"
  instance_type = "t2.micro"
  tags = {
    Name = "day-4"
  }
}

resource "aws_instance" "demo05" {
  ami           = "ami-05ffe3c48a9991133"
  instance_type = "t2.nano"
  tags = {
    Name = "demo-05"
  }
}

