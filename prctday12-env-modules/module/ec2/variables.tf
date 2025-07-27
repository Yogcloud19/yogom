variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  
}

variable "subnet_id" {
  
  type        = string
  
}

variable "env" {
  description = "Environment for the EC2 instance (e.g., dev, stage, prod)"
  type        = string
  
}