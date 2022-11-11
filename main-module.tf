provider "aws" {
  region="us-east-1"
}

module "pipeline" {
source  = "app.terraform.io/IBM-Kailash-Nov10/pipeline/aws"
version = "1.0.0"
}
