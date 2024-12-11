resource "aws_s3_bucket" "bucket1" {
  bucket = "terraform-bucket1-example"
  depends_on = [aws_vpc.main]
  tags = {
    Name = "Terraform-Bucket1"
  }
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "terraform-bucket2-example"
  depends_on = [aws_vpc.main]
  tags = {
    Name = "Terraform-Bucket2"
  }
}

resource "aws_s3_bucket" "bucket3" {
  bucket = "terraform-bucket3-example"
  depends_on = [aws_vpc.main]
  tags = {
    Name = "Terraform-Bucket3"
  }
}