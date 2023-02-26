module "iam_role" {
  source  = "cloudposse/iam-role/aws"
  version = "0.17.0"

  role_description = "Test role"
  principals = {
    "Service": ["lambda.amazonaws.com"]
  }

  context = module.this.context
}
