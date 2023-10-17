resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t3.nano"

  tags = {
    Name = "terraform-101-first-ec2"
  }
}
