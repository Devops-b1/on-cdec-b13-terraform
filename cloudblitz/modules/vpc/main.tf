resource "aws_vpc" "cbz_vpc" {
  cidr_block       = var.cidr
  tags = {
    Name = "${var.project}-vpc"
    env = var.env
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.cbz_vpc.id
  cidr_block = var.private_subnet_cidr

  tags = {
    Name = "${var.project}-private-subnet"
    env = var.env
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.cbz_vpc.id
  cidr_block = var.public_subnet_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.project}-public-subnet"
    env = var.env
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.cbz_vpc.id
  tags = {
    Name = "${var.project}-igw"
    env = var.env
  }
}

resource "aws_default_route_table" "r" {
  default_route_table_id = aws_vpc.cbz_vpc.

  route {
    # ...
  }

  tags = {
    Name = "default table"
  }
}