variable "aws_region" {
  default = "us-east-1"
}
output "medusa_service_url" {
  value = aws_ecs_service.medusa_service.network_configuration[0].assign_public_ip
}

