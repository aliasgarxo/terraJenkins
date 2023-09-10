provider "aws" {
  region = "ap-south-1"
}


#VPC
resource "aws_vpc" "jen-vpc" {
  cidr_block = "13.13.0.0/16"
  tags = {
    Name = "jen-vpc"
  }
}

# SUBNETS

resource "aws_subnet" "jen-pub-sub-1" {
  vpc_id     = aws_vpc.jen-vpc.id
  cidr_block = "13.13.1.0/24"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "jen-pub-sub-1"
  }
}