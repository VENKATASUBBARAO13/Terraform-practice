variable "vpc_cidr" {
  default     = ""  
  description = "The CIDR block for the VPC"
  type        = string
  
}

variable "subnet_cidr" {
  default     = ""  
  description = "The CIDR block for the Subnet"
  type        = string
}