

resource "aws_instance" "instance_1" {
    ami = var.image_id
    instance_type = var.instance_type
    key_name = var.key_pair
#    security_groups = var.sg_name
    vpc_security_group_ids = [aws_security_group.my_sg.id]
    subnet_id = var.subnet_id
    user_data = <<-EOF
        #!/bin/bash
        yum install httpd -y
        systemctl start httpd
        systemctl enable httpd
    EOF
}

variable "image_id" {
  type        = string
  default     = "ami-012967cc5a8c9f891"
  description = "Enter AMI ID"
}