module "dynamodb_table" {
  source  = "cloudposse/dynamodb/aws"
  version = "0.32.0"

  hash_key     = "PK"
  billing_mode = "PAY_PER_REQUEST"

  context = module.this.context
}
