provider "aws" {
    region = "us-east-1"
}

module "vpc_module" {
    source = "./modules/vpc"
    cidr = "10.0.0.0/16"
    project = "cbz"
    env =
    private_subnet_cidr =
    public_subnet_cidr =
}