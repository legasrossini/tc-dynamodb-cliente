provider "aws" {
  region     = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_dynamodb_table" "cliente" {
  name           = var.table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "cpf"

  attribute {
    name = "cpf"
    type = "S"
  }

  attribute {
    name = "nome"
    type = "S"
  }

  attribute {
    name = "email"
    type = "S"
  }
}