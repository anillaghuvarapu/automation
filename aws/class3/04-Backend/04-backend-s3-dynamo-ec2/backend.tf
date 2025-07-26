terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket       = "platform-bucket253402"
    key          = "global/s3/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    # Replace this with your DynamoDB table name!
  }
}
