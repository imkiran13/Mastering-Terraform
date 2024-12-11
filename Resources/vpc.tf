resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "My-VPC"
  }
}
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "My-Internet-Gateway"
  }
}
terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket111"
    key    = "project1/terraform.tfstate"
    region = "ap-south-1"
  }
}