resource "aws_instance" "terra-ec2" {
  ami                    = data.aws_ami.fetch_ami_id.id
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.ec2_ssh_keys.key_name
  vpc_security_group_ids = [aws_security_group.ec2_terra_sg.id]
  availability_zone      = "us-east-1a"
  tags = {
    Name    = "terraform_gen"
    Project = "Automation"
  }
}

resource "aws_ec2_instance_state" "insatnce_state" {
  instance_id = aws_instance.terra-ec2.id
  state = "running"
}