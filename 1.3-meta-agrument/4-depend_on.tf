# resource "aws_instance" "web" {
#   for_each = local.ami_ids
#   ami           = each.value
#   instance_type = "t3.micro"

#   tags = {
#     Name = "Server ${each.key}"
#   }
# }

# locals {
#   ami_ids = {
#      "aws-linux" : "ami-011d19742f14ff9b8"
#     "ubuntu" : "ami-0e7ff22101b84bcff"
#   }
# }

# resource "aws_security_group" "web_security_group" {
#     name = "web_security_group"
#     description = "web_security_group"

#     depends_on = [ aws_instance.web ]
# }