resource "aws_dynamodb_table" "name" {
  name         = "platform-dynamodb-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "ID"
  attribute {
    name = "ID"
    type = "S"
  }
}
