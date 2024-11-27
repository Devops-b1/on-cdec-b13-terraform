provider "aws" {
    region = "us-east-1"
}

module "vpc_module" {
    source = "./modules/vpc"
    cidr =
    project =
    env =
    private_subnet_cidr =
    public_subnet_cidr =
}