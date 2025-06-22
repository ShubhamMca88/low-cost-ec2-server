# EC2 Docker Web Application

Minimal cost Terraform configuration for deploying a Docker-ready EC2 instance on AWS.

## Architecture

- **EC2 t2.micro** instance (Free Tier eligible)
- **Default VPC** with public subnet
- **Security Group** (SSH + HTTP access)
- **Docker** pre-installed via user data

## Cost

- **Monthly**: ~$8.50 (t2.micro)
- **Free Tier**: $0/month (first 12 months)

## Prerequisites

1. AWS CLI configured:
   ```bash
   aws configure
   ```

2. SSH key pair:
   ```bash
   ssh-keygen -t rsa -b 2048 -f id_rsa
   ```

## Deployment

```bash
terraform init
terraform plan
terraform apply
```

## Access

```bash
# SSH to instance
ssh -i id_rsa ubuntu@<public_ip>

# Web application
http://<public_ip>
```

## Cleanup

```bash
terraform destroy
```

## Files

- `main.tf` - EC2 instance configuration
- `network.tf` - Security group and key pair
- `variables.tf` - Input variables
- `outputs.tf` - Output values
- `docker_webapp.sh` - Docker installation script