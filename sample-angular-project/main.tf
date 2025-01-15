provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "angular_vm" {
  ami           = "ami-0c160f2ac546bf1ce" # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "AngularAppVM"
  }
}