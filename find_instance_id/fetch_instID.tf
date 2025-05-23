provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::242201292028:role/admin_role"
  }
}


data "aws_ami" "ami_id" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

output "instance_id" {
  description = "AMI ID of Ubuntu instance"
  value       = data.aws_ami.ami_id.id
}