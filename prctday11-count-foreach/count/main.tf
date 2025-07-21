
data "aws_subnet" "name" {
    filter {
    name   = "tag:Name"
    values = ["my-subnet-1"] # insert value here
  }
}
data "aws_ami" "amzlinux" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = [ "amzn2-ami-hvm-*-gp2" ]
  }
             filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
        filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }

}






resource "aws_instance" "name" {
  ami = "ami-0a1235697f4afa8a4"
  instance_type = "t2.micro"
    subnet_id = data.aws_subnet.name.id
    associate_public_ip_address = true
  count = 3
    tags = {
    Name = "dev-${count.index + 1}"
  }   
}

#terraform destroy -target="aws_instance.name[1]"
