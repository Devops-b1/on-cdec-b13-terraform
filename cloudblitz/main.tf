provider "aws" {
    region = "us-east-1"
}

module "vpc_module" {
    source = "./modules/vpc"
    cidr = "10.0.0.0/16"
    project = "cbz"
    env = "dev"
    private_subnet_cidr = "10.0.0.0/20"
    public_subnet_cidr = "10.0.16.0/20"
}