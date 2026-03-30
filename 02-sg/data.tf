data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project_name}/${var.environment}/vpc_id"
}

# resource "aws_ssm_parameter" "vpc_id" {
#   name  = "/${var.project_name}/${var.environment}/vpc_id"
#   type  = "String"
#   value = aws_vpc.main.id

#   tags = var.common_tags
# }