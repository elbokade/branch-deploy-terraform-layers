data "aws_iam_policy_document" "base" {
  statement {
    sid = "BaseAccess"

    actions = [
      "s3:ListBucket",
      "s3:ListBucketVersions"
    ]

    resources = ["arn:aws:s3:::*"]
    effect    = "Allow"
  }
}

module "iam_role" {
  source  = "cloudposse/iam-role/aws"
  version = "0.17.0"

  role_description = "Test role"
  principals = {
    "Service": ["lambda.amazonaws.com"]
  }
  policy_description = "S3 List Access"
  policy_documents = [
    data.aws_iam_policy_document.base.json
  ]

  context = module.this.context
}
