variable "bucket_prefix" {
  type    = string
  default = "primitive-s3"
}

locals {
  bucket_name = "${var.bucket_prefix}-bucket-new"
}

resource "aws_s3_bucket" "my_bucket_usecases" {
  bucket = local.bucket_name

}

# acl to be checked and updated as per requirements
