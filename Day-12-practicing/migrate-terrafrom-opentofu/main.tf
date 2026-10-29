resource "aws_instance" "name" {
    ami = "ami-041607313c6a2a618"
    instance_type = "t2.micro"
    tags = {
        Name = "production"
    }
  
}
