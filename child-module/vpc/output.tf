output "vpc_id" {
  value = aws_vpc.canada.id
}

output "subnet_id" {
  value = aws_subnet.main.id
}