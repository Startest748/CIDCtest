# resource "aws_s3_bucket" "bucket" {
#   bucket = var.bucket_name

#   tags = {
#     Name        = "My bucket"
#     Environment = var.env
#   }
# }

# resource "aws_instance" "ec2create" {
#   ami           = var.ami_id
#   instance_type = var.instance_type

#   user_data =  <<-EOF
#                #!/bin/bash
#                apt update
#                apt install nginx -y
#                systemctl start nginx
#                EOF

#   tags = {
#     Name = "Jenkinstest"
#   }
# }

# resource "aws_ebs_volume" "demo" {
#   availability_zone = "us-east-1a"
#   size              = 20

#   tags = {
#     Name = var.tag
#   }
# }

module "s3" {
  source = "./modules/s3"
}

module "instance" {
  source = "./modules/instance"
  
}

module "vpc" {
 source = "./modules/vpc" 
}

