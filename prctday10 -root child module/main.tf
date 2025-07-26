module "vpc" {
  source = "./modules/vpc"
 
 cidr_block  = "10.0.0.0/16"                        # VPC CIDR
 subnet_cidr = ["10.0.1.0/24","10.0.2.0/24"]                       # Example subnet CIDR (update as needed)
  az = ["ap-south-1a","ap-south-1b"]
  
}

module "ec2" {
  source = "./modules/ec2"

  ami_id        = "ami-0a1235697f4afa8a4" # Example AMI ID, replace with a valid one
  instance_type = "t2.micro"

  subnet_id = module.vpc.subnet_ids[0] # Use the first subnet ID from the VPC module
  

}

module "rds" {
  source = "./modules/rds"
  subnet_ids      = module.vpc.subnet_ids # Use the subnet IDs from the VPC module 
    db_username     = "admin"
  instance_class = "db.t3.micro" 
  db_name        = "mydb"
  db_password    = "password"

  
}