provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "instance-1" {
  ami             = "ami-0d2614eafc1b0e4d2"
  instance_type   = "t2.micro"
  security_groups = ["default"]
  key_name        = "keymum"
  user_data       = file("grafana.sh")

  tags = {
    Name = "grafana_server"
  }
}

resource "aws_instance" "instance-2" {
  ami             = "ami-0d2614eafc1b0e4d2"
  instance_type   = "t2.micro"
  security_groups = ["default"]
  key_name        = "keymum"

  tags = {
    Name = "node_server"
  }
}
