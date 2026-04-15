terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "gazi-terraform-state-98765"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}

resource "aws_security_group" "demo_sg" {
  name_prefix = "allow-http-"

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

resource "aws_instance" "demo_ec2" {
  ami           = "ami-0a0e5d9c7acc336f1"
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.demo_sg.id]

  user_data = <<-EOF
#!/bin/bash
apt update -y
apt install -y apache2
systemctl enable apache2
systemctl start apache2
rm -f /var/www/html/index.html

cat <<HTML > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>🚀 Terraform DevOps Project | ガジプロジェクト</title>
</head>

<body style="background:#0f172a;color:white;text-align:center;padding-top:80px;font-family:Arial;">

<h1>DevOps Project: Terraform + AWS EC2</h1>

<div style="border:1px solid #38bdf8;padding:25px;width:60%;margin:auto;background:#111827;border-radius:10px;">

    <h2>&#128640; Terraform Deployed Website</h2>

    <p>Hello, I am Gazi | こんにちは、ガジです</p>

    <p>This website is deployed using Terraform on AWS EC2.</p>
    <p>このウェブサイトはTerraformでAWS EC2に自動デプロイされています。</p>

</div>

</body>
</html>
HTML
EOF

  tags = {
    Name = "Terraform-EC2"
  }
}

output "public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.demo_ec2.public_ip
}

output "website_url" {
  description = "Access your website"
  value       = "http://${aws_instance.demo_ec2.public_ip}"
}