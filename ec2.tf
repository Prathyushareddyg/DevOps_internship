provider "aws" {
    region = "us-east-1"
    access_key = "AKIAVI5KGKVD4OWWQ6FO"				
    secret_key = "0F88v452d5KkgJo6pSdEJ4Ebs4j6xOVLu1TZNoJN"
}

resource "aws_vpc" "vpc_1" {
  cidr_block = "192.16.0.0/22"
  tags = {
    Name = "tf-example1"
  }
}

resource "aws_subnet" "subnet_1" {
  vpc_id            = aws_vpc.vpc_1.id
  cidr_block        = "192.16.0.0/23"
  availability_zone = "us-east-1a"

  tags = {
    Name = "tf-example2"
  }
}

resource "aws_network_interface" "test" {
  subnet_id       = aws_subnet.subnet_1.id
}

resource "aws_instance" "instance_1" {
  ami           = "ami-08e4e35cccc6189f4" 
  instance_type = "t2.micro"
}