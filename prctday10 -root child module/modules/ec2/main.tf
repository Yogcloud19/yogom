resource "aws_instance" "web" {
  ami           = var.ami_id # Example AMI ID, replace with a valid one
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "WebServer"
  }
  
}