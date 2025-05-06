provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::242201292028:role/admin_role"
  }
}