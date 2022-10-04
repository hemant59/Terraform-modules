variable "ami" {
    type = string
  default = "ami-026b57f3c383c2eec"  
}

variable "instance_type" {
    type = string
  default = "t2.micro"  
}

variable "instance_tag" {
  type = map(any)
  default = {
  "Name" = "testing" 
}
}

variable "nic_id" {
    type = string 
}
