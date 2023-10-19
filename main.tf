provider "aws" {
  region  = "us-east-1"
  }

resource "aws_instance" "app_server" {
  ami           ="${var.ami}"
  instance_type = "${var.instance_type}"
key_name="LINUX-PAIR-KEY"
  tags = {
    Name = "MyEC2-VM"
  }
}
