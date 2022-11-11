provider "aws" {
  region="us-east-1"
}

module "pipeline" {
source  = "app.terraform.io/IBM-Kailash-Nov10/pipeline/aws"
version = "1.0.0"
}

  variable "env" {
  type = string
  default = "test"
  sensitive = true
}

output "test" {
  value = var.env
  sensitive = true
}

  resource "aws_instance" "KP" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  tags = {
    Name = "LBG test"
  }
}
