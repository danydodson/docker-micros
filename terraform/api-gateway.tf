resource "aws_eip" "api-gateway-eip" {
  instance = module.api-gateway.instance-id
}

module "api-gateway" {
  source = "./node-server"

  ami-id               = "ami-0a887e401f7654935" // Amazon Linux 2 AMI (HVM), SSD Volume Type
  iam-instance-profile = module.api-gateway-codedeploy.iam-instance-profile
  key-pair             = aws_key_pair.docker-micros-key.key_name
  name                 = "api-gateway"
  subnet-id            = aws_subnet.docker-micros-subnet-public.id
  vpc-security-group-ids = [
    aws_security_group.allow-http.id,
    aws_security_group.allow-ssh.id,
    aws_security_group.allow-all-outbound.id
  ]
}

module "api-gateway-codedeploy" {
  source = "./codedeploy-app"

  app-name          = "api-gateway"
  ec2-instance-name = module.api-gateway.name
}
