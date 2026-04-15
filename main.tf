module "ec2" {
  source = "./modules/ec2"

  ami           = "ami-0a0e5d9c7acc336f1"
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = file("user-data.sh")
}

output "public_ip" {
  value = module.ec2.public_ip
}