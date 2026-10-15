resource "aws_vpc" "dev" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = "dev-vpc"
    }
  
}

resource "aws_subnet" "dev" {
    vpc_id = aws_vpc.dev.id
    cidr_block = var.subnet_cidr
    tags = {
        Name = "dev-subnet"
    }
}

resource "aws_internet_gateway" "dev" {
    vpc_id = aws_vpc.dev.id
    tags = {
        Name = "dev-igw"
    }
}

resource "aws_instance" "testing" {
    ami = "ami-004d1eaf8eaa0107d"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.dev.id
    tags = {
        Name = "dev-instance"
    }
  
}

resource "aws_route_table" "dev" {
    vpc_id = aws_vpc.dev.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.dev.id
    }
    tags = {
        Name = "dev-rt"
    }
}

resource "aws_route_table_association" "dev" {
    subnet_id = aws_subnet.dev.id
    route_table_id = aws_route_table.dev.id
}

resource "aws_security_group" "dev" {
    name = "dev-sg"
    description = "Allow SSH and HTTP"
    vpc_id = aws_vpc.dev.id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}