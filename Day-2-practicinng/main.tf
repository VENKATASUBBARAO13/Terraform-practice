resource "aws_vpc" "test_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "test-vpc"
  }
}

resource "aws_subnet" "test_subnet" {
  vpc_id     = aws_vpc.test_vpc.id
  cidr_block = var.subnet_cidr
  tags = {
    Name = "test-subnet"
  }
}