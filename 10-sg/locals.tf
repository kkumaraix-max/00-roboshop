locals {
   common_tags = {
        Project = var.project
        Environment = var.environment
        Terraform =true
   }
  common_name_suffix = "${var.project}-${var.environment}" # roboshop-dev
  vpc_id = data.aws_ssm_parameter.vpc_id.value
}