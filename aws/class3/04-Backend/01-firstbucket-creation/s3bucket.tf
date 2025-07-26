resource "aws_s3_bucket" "example" {
  bucket = "platform-bucket3402"
}

resource "aws_s3_bucket_versioning" "name" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }

}
resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.example.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [aws_s3_bucket_ownership_controls.example]

  bucket = aws_s3_bucket.example.id
  acl    = "private"
}
