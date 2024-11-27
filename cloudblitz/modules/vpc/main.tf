resource "aws_vpc" "cbz_vpc" {
  cidr_block       = var.cidr
  tags = {
    Name = "${var.project}-vpc"
    env = var.env
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.cbz_vpc.id
  cidr_block = var.

  tags = {
    Name = "Main"
  }
}