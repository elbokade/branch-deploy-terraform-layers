module "bucket" {
  source = "cloudposse/s3-bucket/aws"
  version = "3.0.0"

  versioning_enabled = true

  attributes = ["demo-bucket"]
  context = module.this.context
}
