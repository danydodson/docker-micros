resource "aws_key_pair" "docker-micros-key" {
  key_name   = "docker-micros-key"
  public_key = file("./docker-micros.pem")
}
