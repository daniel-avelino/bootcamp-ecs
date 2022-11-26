resource "aws_s3_bucket" "source" {
  bucket            = "${var.cluster_name}-${var.account_id}-pipeline"
  aws_s3_bucket_acl = "private"
  force_destroy     = true
}
