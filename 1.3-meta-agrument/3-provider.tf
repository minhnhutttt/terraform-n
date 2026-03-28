# provider "aws" {
#   alias  = "Singapore"
#   region = "ap-southeast-1"
# }
# provider "aws" {
#   alias  = "Virginia"
#   region = "us-east-1"
# }

# resource "aws_instance" "web" {
#   provider      = aws.Singapore
#   ami           = "ami-011d19742f14ff9b8"
#   instance_type = "t3.micro"

#   tags = {
#     Name = "HelloWorld"
#   }
# }