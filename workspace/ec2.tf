provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "my_instance" {
    ami = "ami-012967cc5a8c9f891"
    instance_type = "t2.micro"
    key_name = "new-key-nv"
    tags = {
        Env = terraform.workspace
    }
}

   dev   terraform init
*  prod
   test