resource "aws_s3_bucket" "deploy-bucket" {
  bucket = "docker-micros-${var.app-name}-deployment"
}
