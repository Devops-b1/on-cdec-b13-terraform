provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "my_instance" {
    count = 5
    ami = "ami-012967cc5a8c9f891"
    instance_type = "t2.micro"
    key_name = "new-key-nv"
    tags = {
        Env = terraform.workspace
    }
}