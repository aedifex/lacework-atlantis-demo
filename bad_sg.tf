provider "aws" {
  region = "us-east-2"
  # profile = "LW_Dominus"
}

resource "aws_security_group" "bad_example" {
  name = "a_bad_security_group"
  ingress {
    from_port   = 1234
    to_port     = 1234
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}