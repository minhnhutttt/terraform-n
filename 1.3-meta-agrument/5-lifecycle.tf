# create_before_destroy

resource "aws_instance" "web" {
  count         = 1
  ami           = "ami-011d19742f14ff9b8"
  instance_type = "t3.micro"
#   availability_zone = "ap-southeast-1b"
  availability_zone = "ap-southeast-1c"

  tags = {
    Name = "Server ${count.index}"
  }

  lifecycle {
    create_before_destroy = true
  }
}

# prevent_destroy

resource "aws_instance" "web1" {
  count         = 1
  ami           = "ami-011d19742f14ff9b8"
  instance_type = "t3.micro"
#   availability_zone = "ap-southeast-1b"
  availability_zone = "ap-southeast-1c"

  tags = {
    Name = "Server ${count.index}"
  }

  lifecycle {
    prevent_destroy = true
  }
}


# ignore_changes

resource "aws_instance" "web1" {
  count         = 1
  ami           = "ami-011d19742f14ff9b8"
  instance_type = "t3.micro"
#   availability_zone = "ap-southeast-1b"
  availability_zone = "ap-southeast-1c"

  tags = {
    Name = "Server ${count.index} ${timestamp()}"
  }

  lifecycle {
    ignore_changes = [ 
        tags
     ]
  }
}


