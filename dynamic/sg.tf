resource "aws_instance" "terraform-guru" {
  ami                    = "ami-09c813fb71547fc4f" #ami-09c813fb71547fc4f
  instance_type          = "t3.large"
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform-guru.id]
  tags = {
    Name = "terraform"
  }

}
resource "aws_security_group" "allow_ssh_terraform-guru" {
  name        = "dymanic_demo"
  description = "Allow port number 22 for SSH access"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]

  }

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
    from_port        = ingress.value ["from_port"]
    to_port          = ingress.value ["to_port"]
    protocol         = ingress.value ["protocol"]
    cidr_blocks      = ingress.value ["cidr_blocks"]  #ingress.value.cidr_blocks
  }
  }
    tags = {
        Name = "allow_sshh"
    }
  }

