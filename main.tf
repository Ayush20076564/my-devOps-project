provider "aws" {
    region = "eu-north-1"
}

resource "aws_security_group" "myapp_sg" {
    name = "myapp_sg"
    description = "Allow HTTP and SSH"


    ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
    from_port   = 0
    to_port     = "-1"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

}

resource "aws_instance" "my_webpage" {
    ami            = "ami-"
    instance_type  = "t3.micro"
    key_name       = "devops-key"
    vpc_security_group_ids = [aws_security_group.myapp_sg.id]

     user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install -y docker.io
              systemctl enable docker
              systemctl start docker
              EOF


    tags = {
        Name = "my-devops-project"
    }
}

output "public_ip" {
    value = aws_instance.my_webpage.public_ip
}

