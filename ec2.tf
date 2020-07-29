provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"

}

terraform {
  backend "s3" {
  }
}

resource "aws_instance" "ins" {
  ami           = "ami-0693ba315aa63cf93"
  instance_type = "t2.micro"
  count         = 1
  tags = {
    Name = "test"
  }
}
