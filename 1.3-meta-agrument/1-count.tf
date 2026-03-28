# resource "aws_instance" "web" {
#   count         = 2
#   ami           = "ami-011d19742f14ff9b8"
#   instance_type = "t3.micro"

#   tags = {
#     Name = "Server ${count.index}"
#   }
# }