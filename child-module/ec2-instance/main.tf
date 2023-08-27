
data "aws_ami" "latest_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]  # Modify this to match the AMI name pattern you're looking for
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}

resource "aws_instance" "example_instance" {
  ami           = data.aws_ami.latest_ami.id
  instance_type = "t2.micro"  
  subnet_id     = var.vpc_subnet
  tags = {
    Name = var.ec2-tags
  }
}


