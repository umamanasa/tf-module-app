data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

## Creating Own Ami
#data "aws_ami" "ami" {
#  most_recent = true
#  name_regex  = "roboshop-ami-v1"
#  owners      = [""]
#}

data "dns_a_record_set" "private_alb" {
  host = var.private_alb_name
}