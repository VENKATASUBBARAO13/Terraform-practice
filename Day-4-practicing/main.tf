resource "aws_vpc" "dev" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "dev-vpc"
    }
  
}

resource "aws_subnet" "subnet-1" {
    vpc_id     = aws_vpc.dev.id
    cidr_block = "10.0.1.0/24"
    tags = {
        Name = "subnet-1"
    }
}

resource "aws_instance" "test" {
    ami           = "ami-0c766c2cff1b35ed2"
    instance_type = "t2.micro"
    subnet_id     = aws_subnet.subnet-1.id
    tags = {
        Name = "web-instance"
    }
}