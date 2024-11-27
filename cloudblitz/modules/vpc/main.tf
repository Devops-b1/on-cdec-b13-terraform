resource "aws_vpc" "cbz_vpc" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "${var.project}-vpc"
    env = var.env
  }
}