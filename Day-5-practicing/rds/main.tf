
resource "aws_db_instance" "my_rds" {
  identifier        = "my-mysql-rds"
  allocated_storage = 20
  storage_type      = "gp2"
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t3.micro"

  db_name  = "mydatabase"
  username = "admin"
  password = var.db_password

  publicly_accessible    = false
  skip_final_snapshot    = true
  deletion_protection    = false

  tags = {
    Name = "my-mysql-rds"
  }
}

variable "db_password" {
  description = "Master password for RDS"
  type        = string
  sensitive   = true
}

output "rds_endpoint" {
  value = aws_db_instance.my_rds.endpoint
}
