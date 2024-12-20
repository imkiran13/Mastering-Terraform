
aws_region         = "us-east-1"
vpc_cidr           = "172.18.0.0/16"
vpc_name           = "terraform-aws-testing"
key_name           = "fedora"
azs                = ["us-east-1a", "us-east-1b", "us-east-1c"]
public_cird_block  = ["172.18.1.0/24", "172.18.2.0/24", "172.18.3.0/24"]
private_cird_block = ["172.18.10.0/24", "172.18.20.0/24", "172.18.30.0/24"]
environment        = "prod"
ingress_value      = ["80", "8080", "443", "8443", "22", "3306", "1900", "1443"]