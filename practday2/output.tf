output "ip" {
    value = aws_instance.name.public_ip
  
}
output "privateip" {
  value = aws_instance.day-4.private_ip
}

output "terraform_version" {
  value = terrafrom.terraform_version
}