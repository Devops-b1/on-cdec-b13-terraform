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
    ami = var.image_id
    instance_type = "t2.micro"
    key_name = "new-key-nv"
    security_groups = ["default"]
}

variable "image_id" {
  type        = string
  default     = "ami-012967cc5a8c9f891"
  description = "Enter AMI ID"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "key_pair" {
    default = "new-key-nv"
}

variable "sg_name" {
    type = list
    default = ["default"]
}
