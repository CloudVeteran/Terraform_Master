provider "aws" {
    region = "us-east-1"
}

variable "environment" {
    type = string
}

resource "aws_instance" "ec2" {
    ami = "ami-0771b6766e1e61632"
    instance_type = "t2.micro"
    count = var.environment == "prod" ? 5 : 0
}