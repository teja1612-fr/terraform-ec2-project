provider "aws" {
  region     = "ap-south-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}
