# locals {
#   common_name_suffix = "${var.project}-${var.environment}"
#   common_tags = {
#     Project     = var.project
#     Environment = var.environment
#   }
# }

resource "aws_instance" "bastion" {
  ami                    = local.ami_id
  instance_type          = "t3.micro"
  subnet_id              = local.public_subnet_id
  vpc_security_group_ids = [data.aws_ssm_parameter.bastion_sg_id.value]


  tags = merge(
    local.common_tags,
    {
      Name = "${local.common_name_suffix}-bastion"
    }
  )
}