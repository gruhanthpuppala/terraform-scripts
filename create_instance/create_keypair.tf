resource "aws_key_pair" "ec2_ssh_keys" {
  key_name   = "ec2-kp" # actual key name
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIkSd6S6xNWr3hMfzs6d5vbDeqkzyAYfkrWqZv+K6Mh4 gruhanth.puppala@Gruhanth"
  tags = {
    Name = "terraform_gen"
  }
}

resource "aws_key_pair" "ec2_ssh_keys2" {
  key_name   = "ec2-kp2" # actual key name
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIkSd6S6xNWr3hMfzs6d5vbDeqkzyAYfkrWqZv+K6Mh4 gruhanth.puppala@Gruhanth"
  tags = {
    Name = "terraform_gen"
  }
}