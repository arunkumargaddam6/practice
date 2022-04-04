provider "aws" {
region = "ap-southeast-2"
}

resource "aws_instance" "testinstance" {
  ami           = "ami-059af0b76ba105e7e"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Rishi"
  }
}
