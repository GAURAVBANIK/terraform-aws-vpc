variable "vpc_cidr" {
    type = string
  
}

variable "avz" {
    type = list(string)
  
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
}
