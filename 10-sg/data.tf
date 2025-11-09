data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project_name}/${var.environment}/vpc_id"
}

# data "aws_security_group" "roboshop" {
#   name   = "roboshop"
#   vpc_id = local.vpc_id
  
# }


  #vpc_id = data.aws_ssm_parameter.vpc_id.value
