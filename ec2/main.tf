    
provider "aws"{
	region = "us-east-1"
        version = "v2.70.0"
	access_key = "AKIA4YF22HNM4YLAUHER"				
        secret_key = "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"
}

resource "aws_instance" "server"{
	instance_type = "t2.micro"
	ami = "ami-033b95fb8079dc481"
}
