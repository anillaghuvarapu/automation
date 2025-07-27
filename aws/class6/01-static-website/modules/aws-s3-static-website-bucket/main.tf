# Main bucket resource
resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  tags   = var.tags
}

resource "aws_s3_bucket_acl" "s3_bucket_acl" {
  bucket = aws_s3_bucket.s3_bucket.id
  acl    = "private" # Change to "public-read" if you want public access
}

# Public-read bucket policy (optional method, can use bucket policy separately)
resource "aws_s3_bucket_policy" "public_read_policy" {
  bucket = aws_s3_bucket.s3_bucket.id
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "PublicReadGetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Action": [
        "s3:GetObject"
      ],
      "Resource": [
        "arn:aws:s3:::${var.bucket_name}/*"
      ]
    }
  ]
}
EOF
  depends_on = [
    aws_s3_bucket_public_access_block.website
  ]
}

# Website configuration resource (THIS is what your output must reference)
resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.s3_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}



resource "aws_s3_bucket_public_access_block" "website" {
  bucket                  = aws_s3_bucket.s3_bucket.id
  block_public_acls       = false
  ignore_public_acls      = false
  block_public_policy     = false
  restrict_public_buckets = false
}


