provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "intro" {
  ami                    = "ami-0a3c3a20c09d6f377"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "terra-key"
  vpc_security_group_ids = ["sg-02ccd4c50ee7e24e4"]
  tags = {
    Name    = "Terra-Instance"
    Project = "Terra"
  }
}