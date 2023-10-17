provider "aws" {
  region = "us-west-2"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}
