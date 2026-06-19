output "s3_bucket_name" {
  description = "S3 bucket used to host the frontend files."
  value       = aws_s3_bucket.frontend.bucket
}

output "cloudfront_distribution_id" {
  description = "CloudFront distribution id."
  value       = aws_cloudfront_distribution.frontend.id
}

output "cloudfront_url" {
  description = "CloudFront HTTPS URL."
  value       = "https://${aws_cloudfront_distribution.frontend.domain_name}"
}
