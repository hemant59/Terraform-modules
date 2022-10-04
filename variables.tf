variable "cidr_block" {
  type    = string
  default = "172.16.0.0/16"
}

variable "vpc_tag" {
  type = map(any)
  default = {
    "Name" = "test-vpc"
  }
}

variable "subnet_cidr_block" {
  type    = string
  default = "172.16.10.0/24"
}

variable "subnet_tag" {
  type = map(any)
  default = {
    "Name" = "tf-example"
  }
}

variable "sg_tag" {
  type = map(any)
  default = {
    "Name" = "test_sg"
  }
}

variable "private_ips" {
  type    = list(string)
  default = ["172.16.10.100"]
}

variable "nic_tag" {
  type = map(any)
  default = {
    "Name" = "primary_network_interface"
  }
}

variable "ami" {
  type    = string
  default = "ami-026b57f3c383c2eec"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_tag" {
  type = map(any)
  default = {
    "Name" = "testing"
  }
}
