resource "aws_security_group" "ec2_terra_sg" {
  name        = "terra_sg" # resource / calling_resource_name / naming_resource_block
  description = "Terraform to create SG to allow TCP and HTTP protocal from myIP"
  tags = {
    Name = "terraform_gen"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh_myIP" {
  security_group_id = aws_security_group.ec2_terra_sg.id
  cidr_ipv4         = "106.222.198.111/32"
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}

resource "aws_vpc_security_group_ingress_rule" "allow_http_myIP" {
  security_group_id = aws_security_group.ec2_terra_sg.id
  cidr_ipv4         = "106.222.198.111/32" # this ip is a string as it's a value
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
}

resource "aws_vpc_security_group_egress_rule" "allow_outbound_ipv4" {
  security_group_id = aws_security_group.ec2_terra_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # means allow all protocals
}

resource "aws_vpc_security_group_egress_rule" "allow_outbound_ipv6" {
  security_group_id = aws_security_group.ec2_terra_sg.id
  cidr_ipv6         = "::/0"
  ip_protocol       = "-1"
}