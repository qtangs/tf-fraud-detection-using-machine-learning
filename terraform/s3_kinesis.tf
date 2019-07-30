resource "aws_s3_bucket" "s3_bucket_2" {
  bucket        = "${var.s3_bucket_name_2}-${var.aws_region}"
  acl           = "private"
  force_destroy = true                                        # delete all data from this bucket before destroy

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Description = "Bucket for storing processed events for visualization features."
    Group       = "${var.default_resource_group}"
    CreatedBy   = "${var.default_created_by}"
  }
}
