output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.webapp.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.webapp.public_ip
}

output "webapp_url" {
  description = "URL to access the web application"
  value       = "http://${aws_instance.webapp.public_ip}"
}