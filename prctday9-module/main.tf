
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
  ami           = var.ami_id
  instance_type = var.instance_type
  #key_name      = var.key
  subnet_id     = data.aws_subnet.name.id  # ✅ Use subnet ID from data source

  tags = {
    Name = "dev"
  }
}
 