resource "aws_instance" "terra-insta" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "terra-key"
  vpc_security_group_ids = ["sg-02ccd4c50ee7e24e4"]
  tags = {
    Name    = "Terra-Instance"
    Project = "Terra"
  }
}