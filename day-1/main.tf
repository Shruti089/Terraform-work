provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "demo_ec2" {
  ami           = "ami-0b8d1d9f5f4d3a4f2" # Amazon Linux 2 (eu-north-1)
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Day1-EC2"
  }
}

