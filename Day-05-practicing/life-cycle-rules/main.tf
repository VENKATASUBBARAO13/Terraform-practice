resource "aws_vpc" "test" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "test-vpc"
  }
}

resource "aws_subnet" "test" {
  vpc_id     = aws_vpc.test.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "test-subnet"
  }
}

resource "aws_instance" "testing" {
  ami           = "ami-004d1eaf8eaa0107d"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.test.id

  tags = {
    Name = "test-instance"
  }

  lifecycle {
    prevent_destroy = true
  }
}
