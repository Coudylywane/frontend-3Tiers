# Terraform AWS frontend

This Terraform stack creates the frontend hosting layer:

- private S3 bucket for the Vite `dist` files
- CloudFront distribution with HTTPS
- CloudFront Origin Access Control so the bucket is not public
- SPA fallback to `index.html`

## GitHub configuration

Create these GitHub repository secrets:

- `AWS_ROLE_TO_ASSUME`: IAM role ARN used by GitHub Actions through OIDC
- `TF_STATE_BUCKET`: existing S3 bucket used for Terraform remote state

Create these GitHub repository variables if you want to override defaults:

- `AWS_REGION`: default is `eu-west-3`
- `PROJECT_NAME`: default is `tp-3tiers-frontend`
- `ENVIRONMENT`: default is `prod`
- `TF_STATE_KEY`: default is `frontend/terraform.tfstate`

The Terraform state bucket must already exist before the first run.
