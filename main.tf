resource "aws_instance" "testing" {
  ami           = "ami-06464c878dbe46da4"
  instance_type = "t2.micro"
}
