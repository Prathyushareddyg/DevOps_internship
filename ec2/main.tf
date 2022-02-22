provider "aws" {
    region = "us-east-1"
}

resource "aws_vpc" "vpc_1" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "tf-example1"
  }
}

resource "aws_subnet" "subnet_1" {
  vpc_id            = aws_vpc.vpc_1.id
  cidr_block        = "10.100.0.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "tf-example2"
  }
}

resource "aws_instance" "instance_1" {
  ami           = "ami-033b95fb8079dc481" 
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet_1.id
}
