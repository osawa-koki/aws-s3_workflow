
variable "region" {
  type = string
}

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "aws-s3-workflow" {
  bucket = "aws-s3-workflow"

  tags = {
    Name = "aws-s3-workflow"
  }

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = ["http://example.com"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }

  versioning {
    enabled = true
  }

}

resource "aws_s3_bucket_public_access_block" "aws-s3-workflow-public-access-block" {
  bucket = aws_s3_bucket.aws-s3-workflow.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

