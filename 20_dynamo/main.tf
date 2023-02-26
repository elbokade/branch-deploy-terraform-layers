module "dynamodb_table" {
  source  = "cloudposse/dynamodb/aws"
  version = "0.32.0"

  billing_mode = "PAY_PER_REQUEST"

  context = module.this.context
}
