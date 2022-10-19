variable "ami_id" {
  description = "declare the name of ami type"
  
}

variable "instance_type" {
  description = "declare the name of instance"
  default = "t2.micro"
}

variable "subnet_id" {}