# Key Pair for EC2 login
resource "aws_key_pair" "webapp_key" {
  key_name   = var.key_name
  public_key = file(var.public_key_path)
}

# Security Group for EC2 (uses default VPC)
resource "aws_security_group" "webapp_sg" {
  name        = "${var.project_name}-sg"
  description = "Security group for EC2 instance"

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

  tags = {
    Name        = "${var.project_name}-sg"
    Environment = var.environment
  }
}