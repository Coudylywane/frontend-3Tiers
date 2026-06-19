variable "project_name" {
  description = "Project name used for AWS resource names and tags."
  type        = string
  default     = "tp-3tiers-frontend"
}

variable "environment" {
  description = "Deployment environment name."
  type        = string
  default     = "prod"
}

variable "aws_region" {
  description = "AWS region for regional resources."
  type        = string
  default     = "eu-west-3"
}

variable "bucket_name" {
  description = "Optional fixed S3 bucket name. Leave empty to generate one from project, environment, and account id."
  type        = string
  default     = ""
}

variable "cloudfront_price_class" {
  description = "CloudFront price class."
  type        = string
  default     = "PriceClass_100"
}
