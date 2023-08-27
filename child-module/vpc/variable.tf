variable "vpc_cidr" {
  description = "cidr block for vpc"
  type = string
}

variable "vpc_tag" {
    description = "vpc tags"
    type = string
    
  
}

variable "subnet_cidr" {
  description = "subnet cidr"
  type = string
}

variable "subnet_az" {
    description = "availability zones"
    type = string
    
  
}

variable "subnet_tag" {
    description = "subnet name"
    type = string
  
}