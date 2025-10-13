provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "Subred1" {
ami = "ami-052064a798f08f0d3" # Amazon Linux 2023 us-east-1
instance_type = "t3.micro"

tags = {
Name = "Subred1"
}
}

resource "aws_instance" "Subred2" {
ami = "ami-052064a798f08f0d3"
instance_type = "t3.micro"

tags = {
Name = "Subred2"
}
}