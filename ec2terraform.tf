provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAQZTK7F7P3MFJUAU6"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-0f8ca728008ff5af4"
  instance_type = "t3.micro"
  subnet_id     = "subnet-03e27f96cca27f839"

  tags = {
    Name = "HelloWorld"
  }
}