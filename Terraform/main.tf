provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-02d26659fd82cf299"   # Ubuntu 22.04 in ap-south-1
  instance_type = "t2.micro"
  key_name      = "default value"

  tags = {
    Name = "Jenkins-Terraform-Server"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}
