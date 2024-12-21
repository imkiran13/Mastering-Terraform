#This Terraform Code Deploys Basic VPC Infra.
provider "aws" {
  region = var.aws_region
}
terraform {
  backend "s3" {
    bucket = "workspacesbucket1213" #create bucket of this name in s3 bucker first
    key    = "function.tfstate"
    region = "us-east-1"
  }
}

resource "aws_vpc" "default" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name        = var.vpc_name
    Owner       = local.Owner
    costcenter  = local.costcenter
    TeamDL      = local.TeamDL
    environment = var.environment
  }
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id
  tags = {
    Name = "${var.vpc_name}-IGW"
  }
}


