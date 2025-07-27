resource "aws_vpc" "name" {
    cidr_block = var.cidr_block
   
  
}


resource "aws_subnet" "subnet_a" {
  vpc_id            = aws_vpc.name.id
  #cidr_block        = var.subnet_cidr
  cidr_block        = var.subnet_cidr[0] # Use the first subnet CIDR from the list
  availability_zone = var.az[0]
}

resource "aws_subnet" "subnet_b" {
  vpc_id            = aws_vpc.name.id
  cidr_block        = var.subnet_cidr[1] # Use the second subnet CIDR from the list
  availability_zone = var.az[1]
}


output "vpc_id" {
  value = aws_vpc.name.id
}

 


output "subnet_ids" {
  value = [
    aws_subnet.subnet_a.id,
    aws_subnet.subnet_b.id
  ]
}



 