
variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created."
  type        = string
}

variable "ports" {
  description = "List of ports to open"
  type        = list(number)
  default     = [22, 443, 80]
}

variable "my_tag" {
  description = "sg tag"
  type = string
}