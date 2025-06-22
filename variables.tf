variable "ami_id" {
  description = "AMI ID to use for the instance"
  type        = string
  default     = "ami-0e35ddab05955cf57" # Ubuntu 22.04 LTS in ap-south-1
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name tag for the instance"
  type        = string
  default     = "docker-webapp"
}

variable "key_name" {
  description = "Key pair name for SSH"
  type        = string
  default     = "webapp-key"
}

variable "public_key_path" {
  description = "Path to the public key file"
  type        = string
  default     = "./id_rsa.pub"
}



variable "project_name" {
  description = "Project name"
  type        = string
  default     = "docker-webapp"
}

variable "environment" {
  description = "Environment (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

