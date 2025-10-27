resource "aws_instance" "ec2create" {
  ami           = var.ami_id
  instance_type = var.instance_type

  user_data =  <<-EOF
               #!/bin/bash
               apt update
               apt install nginx -y
               systemctl start nginx
               EOF

  tags = {
    Name = "HelloWorld"
  }
}