provider "aws" {
    region = "us-east-1"
}

# resource "aws_instance" "my_instance" {
#     count = 3
#     ami = "ami-012967cc5a8c9f891"
#     instance_type = "t2.micro"
#     key_name = "new-key-nv"
#     tags = {
#         Env = terraform.workspace
#     }
# }

resource "aws_instance" "my_instance" {
    for_each = var.instance_type
    ami = "ami-012967cc5a8c9f891"
    instance_type = each.value.instance_type
    key_name = "new-key-nv"
    tags = {
        Name = "instance-${each.key}"
        Env = terraform.workspace
    }
}

variable "instance_type" {
default = {
    small  = "t2.small"
    micro  = "t2.micro"
    medium  = "t2.micro"
}
}

variable "instance_conf" {
    default = {
        instance1 = {
            ami = "ami-012967cc5a8c9f891"
            instance_type = "t2.micro"
        }
        instance2 = {
            ami = "ami-012967ccskahfgjc9f891"
            instance_type = "t3.micro"
        }
        instance3 = {
            ami = "ami-ffdljbfs"
            instance_type = "t4.micro"
        }
    }
}