# Deliberately insecure synthetic-only IaC used for the authorized MVDev acceptance proof.
# This fixture is never deployed.
resource "aws_s3_bucket" "synthetic_public_bucket" {
  bucket = "cline-kan-169-public-synthetic-never-deployed"
}

resource "aws_s3_bucket_public_access_block" "synthetic_public_access" {
  bucket = aws_s3_bucket.synthetic_public_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
