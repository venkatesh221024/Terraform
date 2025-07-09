provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-05ffe3c48a9991133" # Replace with a valid AMI
  instance_type = "t2.micro"
  tags = {
    Name = "TerraformJenkinsExample"
  }
}
