provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0713f98de93617bb4"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-test"
  }
}
