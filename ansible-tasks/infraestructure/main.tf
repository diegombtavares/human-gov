provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "host01" {
  ami                    = "ami-026ebd4cfe2c043b2" # Ubuntu
  instance_type          = "t2.micro"
  key_name               = "tcb-ansible-key"
  vpc_security_group_ids = [aws_security_group.secgroup.id]

  provisioner "local-exec" {
    command = "sleep 30; ssh-keyscan ${self.public_ip} >> ~/.ssh/known_hosts"
  }
}

resource "aws_instance" "host02" {
  ami                    = "ami-026ebd4cfe2c043b2" # Ubuntu
  instance_type          = "t2.micro"
  key_name               = "tcb-ansible-key"
  vpc_security_group_ids = [aws_security_group.secgroup.id]

  provisioner "local-exec" {
    command = "sleep 30; ssh-keyscan ${self.public_ip} >> ~/.ssh/known_hosts"
  }
}

resource "aws_instance" "host03" {
  ami                    = "ami-01e5ff16fd6e8c542" # Debian
  instance_type          = "t2.micro"
  key_name               = "tcb-ansible-key"
  vpc_security_group_ids = [aws_security_group.secgroup.id]

  provisioner "local-exec" {
    command = "sleep 30; ssh-keyscan ${self.public_ip} >> ~/.ssh/known_hosts"
  }
}

resource "aws_security_group" "secgroup" {

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

output "host01_public_ip" {
  value = aws_instance.host01.public_ip
}

output "host02_public_ip" {
  value = aws_instance.host02.public_ip
}

output "host03_public_ip" {
  value = aws_instance.host03.public_ip
}