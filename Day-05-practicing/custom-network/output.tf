output "instance_id" {
    
  value = aws_instance.testing.id
  
}

output "instance_public_ip" {
    
  value = aws_instance.testing.public_ip
  
}

output "vpc_id" {
    
  value = aws_vpc.dev.id
  
}

output "subnet_id" {
    
  value = aws_subnet.dev.id
  
}