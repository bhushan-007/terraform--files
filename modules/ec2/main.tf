resource "aws_instance" "first_instance" {
  ami       = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
}