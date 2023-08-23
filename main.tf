provider "aws" {
  region = "us-east-1"
}

resource "aws_dynamodb_table" "favorite_sites" {
  name           = "favorite-sites"
  billing_mode   = "PROVISIONED"
  read_capacity  = "20"
  write_capacity = "20"
  hash_key = "url"

  attribute {
    name = "url"
    type = "S"
  }

}
