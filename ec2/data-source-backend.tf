data "aws_vpc" "terraform-aws-testing" {
  id = "vpc-0c41320ee41c3dfb4"
}


data "aws_subnet" "Terraform_Public_Subnet1-testing" {
  id = "subnet-06617bb4210b79e88"
}
data "aws_security_group" "allow_all" {
  id = "sg-06e347596d49af28f"
}
