provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "terraformbucket1212"
    key    = "current-infra.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "web-1" {
  ami                         = "ami-97785bed"
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "fedora"
  subnet_id                   = data.aws_subnet.Terraform_Public_Subnet1-testing.id
  vpc_security_group_ids      = [data.aws_security_group.allow_all.id]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-1"
    Env        = "Prod"
    Owner      = "kiran"
    CostCenter = "ABCD"
  }

}
