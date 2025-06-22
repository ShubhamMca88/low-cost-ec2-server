# EC2 instance for Docker web application
resource "aws_instance" "webapp" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.webapp_key.key_name
  security_groups             = [aws_security_group.webapp_sg.name]
  associate_public_ip_address = true
  user_data                   = file("${path.module}/docker_webapp.sh")
  user_data_replace_on_change = true

  tags = {
    Name        = var.instance_name
    Environment = var.environment
    Project     = var.project_name
  }
}
