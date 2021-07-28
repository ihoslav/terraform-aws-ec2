provider "aws" {
  region = var.region
}

data "aws_instance" "virgin-ec2" {
    instance_id = aws_instance.ihos-ec3.id 
  
}

