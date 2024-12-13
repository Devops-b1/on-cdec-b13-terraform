provider "aws" {
    region = "us-east-1"
}

# resource "aws_instance" "demo_import_instance" {
#     instance_type = ""
#     ami = ""
# }


resource "aws_instance" "my_instance" {
    ami = "ami-012967cc5a8c9f891"
    instance_type = "t2.micro"
    key_name = "new-key-nv"
    
    provisioner "file" {
        source  = "./script.sh"
        destination = "/opt/script.sh"
    }

    


}