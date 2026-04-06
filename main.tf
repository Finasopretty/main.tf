provider "aws" {
  region = "us-east-1"
}

# Security Group
resource "aws_security_group" "ssh_sg" {
  name        = "allow_ssh_new"
  description = "Allow SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # allow from anywhere (for learning only)
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
