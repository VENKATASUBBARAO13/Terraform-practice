
resource "aws_instance" "practice" {
  ami           = "ami-071672625ad35d880"
  instance_type = "t2.medium"

  subnet_id = aws_subnet.subnet-1.id

  tags = {
    Name = "MyInstance"
  }
}

resource "aws_vpc" "dev" {
    cidr_block = var.vpc_cidr
}

resource "aws_subnet" "subnet-1" {
    vpc_id = aws_vpc.dev.id
    cidr_block = var.subnet_cidr
}