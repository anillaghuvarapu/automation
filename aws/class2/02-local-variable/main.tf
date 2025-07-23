locals {
  bucket_name = "primitive-s3-bucket"
  env         = "dev"
}


resource "aws_s3_bucket" "my_bucket_usecases" {
  bucket = local.bucket_name

  tags = {
    Name        = local.bucket_name
    Environment = local.env
  }
}


