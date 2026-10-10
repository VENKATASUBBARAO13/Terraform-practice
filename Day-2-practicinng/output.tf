output "subnet_az" {
  description = "Availability Zone of the subnet"
  value       = aws_subnet.test_subnet.availability_zone
}

output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.test_vpc.id
}

output "subnet_id" {
  description = "ID of the created subnet"
  value       = aws_subnet.test_subnet.id
}