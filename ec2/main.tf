provider "aws"{
	region = "ap-south-1"
        version = "v2.70.0"
}

resource "aws_instance" "server"{
	instance_type = "t2.micro"
	ami = "ami-0c6615d1e95c98aca"
}
