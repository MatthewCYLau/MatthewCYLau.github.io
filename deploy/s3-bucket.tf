resource "aws_s3_bucket" "assets" {
  bucket = "matlau-portfolio-assets"

  tags = {
    Name        = "app"
    Environment = "Portfolio Github page"
  }
}

resource "aws_s3_bucket_public_access_block" "assets" {
  bucket = aws_s3_bucket.assets.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}