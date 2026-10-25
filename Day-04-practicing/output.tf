output "vpc_id" {
    value = aws_vpc.dev.id
}

output "subnet_id" {
    value = aws_subnet.subnet-1.id
}
output "instance_id" {
    value = aws_instance.test.id
}