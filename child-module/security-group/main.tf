#Canada security group allows traffic ports 22, 443, and 80"

resource "aws_security_group" "canada" {
  name        = "canada-sg"
  tags = {
    Name = var.my_tag
  }
  
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = var.ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
