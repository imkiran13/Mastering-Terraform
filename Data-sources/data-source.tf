data "aws_vpc" "Test-Vpc" {
  id = "vpc-03c732e0b2165a82c"
}

resource "aws_internet_gateway" "igw" {
  vpc_id = data.aws_vpc.Test-Vpc.id
}
