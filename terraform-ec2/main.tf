resource "aws_instance" "my_ec2" {
  ami           = "ami-01fd6fa49060e89a6"   
  instance_type = "t3.micro"

  tags = {
    Name = "Jenkins-Terraform-EC2"
  }
}
