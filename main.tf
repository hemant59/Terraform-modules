module "vpc" {
  source     = "./modules/aws_vpc"
  cidr_block = var.cidr_block
}


module "subnet" {
  source     = "./modules/aws_subnet"
  vpc_id     = module.vpc.vpc_id
  cidr_block = var.subnet_cidr_block
}

resource "aws_instance" "testing" {
  ami           = "ami-06464c878dbe46da4"
  instance_type = "t2.micro"
}
module "sg" {
  source = "./modules/aws_security group"
  vpc_id = module.vpc.vpc_id
}

module "nic" {
  source      = "./modules/aws_network_interface"
  subnet_id   = module.subnet.subnet_id
  private_ips = var.private_ips
}

module "ec2" {
  source        = "./modules/aws_ec2"
  ami           = var.ami
  instance_type = var.instance_type
  nic_id        = module.nic.nic_id
}


