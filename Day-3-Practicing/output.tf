output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.practice.id
  
}

output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.dev.id
}

output "subnet_az" {
  description = "Availability zone of the created subnet"
  value       = aws_subnet.subnet-1.availability_zone
}