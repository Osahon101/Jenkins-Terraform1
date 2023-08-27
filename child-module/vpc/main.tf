resource "aws_vpc" "canada" {
  cidr_block = var.vpc_cidr
    tags = {
        Name = var.vpc_tag
    }
}

resource "aws_subnet" "main" {
  vpc_id = aws_vpc.canada.id
  cidr_block = var.vpc_cidr
  availability_zone = var.subnet_az
  tags = {
    Name = var.subnet_tag
  }
}