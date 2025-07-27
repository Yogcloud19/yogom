 
variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  
}


variable "availability_zone" {
  description = "List of availability zones for the subnets"
  type        = string
  
}

variable "public_subnet_cidr" {
  description = "List of CIDR blocks for public subnets"
  type        = string
  
}
variable "env" {
  description = "The environment for the VPC (e.g., dev, stage, prod)"
  type        = string 
  
}