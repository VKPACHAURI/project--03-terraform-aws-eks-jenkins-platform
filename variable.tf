variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "public_subnet_1_cidr" {
  description = "Public Subnet 1 CIDR"
  type        = string
}

variable "public_subnet_2_cidr" {
  description = "Public Subnet 2 CIDR"
  type        = string
}

variable "private_subnet_1_cidr" {
  description = "Private Subnet 1 CIDR"
  type        = string
}

variable "private_subnet_2_cidr" {
  description = "Private Subnet 2 CIDR"
  type        = string
}

variable "availability_zone_1" {
  description = "AZ 1"
  type        = string
}

variable "availability_zone_2" {
  description = "AZ 2"
  type        = string
}