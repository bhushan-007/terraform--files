provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA4G5RGJXQFWGPT3EX"
  secret_key = "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"
}

module "my_vpc" {
    source = "../modules/vpc"
    vpc_cidr = "192.168.0.0/16"
    subnet_cidr = "192.168.1.0/24"
    vpc_id     =  module.my_vpc.vpc_id
    
}

module "my_ec2" {
    source = "../modules/ec2"
    instance_type = "t2.micro"
    ami_id          = "ami-090fa75af13c156b4"
    subnet_id     = module.my_vpc.subnet_id
}