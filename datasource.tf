data "aws_ami" "example" {
  most_recent = true

  owners = ["self"]
  tags = {
    Name   = "webserver-image-dec-20"
  }
}

resource "aws_instance" "myawsserver" {
  ami = data.aws_ami.example.id
  instance_type = "t2.micro"

  tags = {
    Name = "Techlanders-aws-ec2-instance"
    Envi= "test"
  }
}
