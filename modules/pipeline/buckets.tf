resource "aws_s3_bucket" "source" {
  bucket            = "${var.cluster_name}-${var.account_id}-pipeline"
  force_destroy     = true
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.source.id
  acl    = "private"
}