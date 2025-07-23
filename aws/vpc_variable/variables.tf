variable "aws_region" {
    description = "The AWS region to create the VPC in."
    default     = "us-east-1" 
}

variable "vpc_cidr" {    
  description = "value  of vpc cidr block"
  default = "10.0.0.0/24"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  default     = "10.0.3.0/24"  
}