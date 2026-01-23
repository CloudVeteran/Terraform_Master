provider "aws" {
    region = "us-east-1"
    alias  = "east1"    
}

provider "aws" {
    region = "us-east-2"
    alias  = "east2"
}

resource "aws_vpc" "boyvpc" {
    cidr_block = "10.0.0.0/16"
    provider   = aws.east1
    tags       = {
        Name = "boyvpc"
    }
}

resource "aws_vpc" "girlvpc" {
    cidr_block = "10.0.0.0/16"
    provider   = aws.east2
    tags       = {
        Name = "girlvpc"
    }   
}