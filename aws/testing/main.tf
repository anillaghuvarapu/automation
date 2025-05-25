provider "aws" {
  # Configuration options
}

resource "aws_instance" "web" {
  ami           = "ami-0ac4dfaf1c5c0cce9"
  instance_type = "t2.micro"
  

  tags = {
    Name = "HelloWorld"
  }
}