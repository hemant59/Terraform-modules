variable "vpc_id" {
    type = string 
}

variable "sg_tag" {
    type = map(any) 
    default = {
      "Name" = "test_sg"
    }
}