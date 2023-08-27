variable "instance_type" {
  description = "AMI class"
  type = string
  default = "t2.micro"
}

variable "vpc_subnet" {
    description = "subnet id"
    type = string
    }

variable "ec2-tags" {
    description = "instance tag"
    type = string 
}