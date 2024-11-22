/*
resource "aws_instance" "my_instance" {

}

# <BLOCK_TYPE> <RESOURCE_TYPE> <BLOCK_NAME> {
#     # Configuration
# }
*/

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "instance_1" {
    ami = "ami-012967cc5a8c9f891"
    instance_type = "t2.micro"
    key_name = "new-key-nv"
    security_groups = ["default"]
}


